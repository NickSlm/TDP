﻿using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Windows;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using ToDoListPlus.Services;
using ToDoListPlus.ViewModels;
using Microsoft.Extensions.Logging;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;



namespace ToDoListPlus.ViewModels
{
    public class ToDoListViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler? PropertyChanged;
        public ICommand RemoveItemCommand => _removeItemCommand;
        public ICommand CleanItemsCommand => _cleanItemsCommand;
        public ICommand ToggleReadOnlyCommand => _toggleReadOnlyCommand;
        public ObservableCollection<ToDoItem> ToDoList => _taskService.ToDoList;

        private readonly DelegateCommand _toggleReadOnlyCommand;
        private readonly DelegateCommand _removeItemCommand;
        private readonly DelegateCommand _cleanItemsCommand;

        private readonly AuthService _authService;
        private readonly TaskService _taskService;
        private readonly AppStateService _appStateService;
        private int _completedTasks;
        private int _totalTasks;

        public int TotalTasks
        {
            get => _totalTasks;
            set
            {
                _totalTasks = value;
                OnPropertyChanged(nameof(TotalTasks));
            }
        }
        public int CompletedTasks
        {
            get => _completedTasks;
            set
            {
                _completedTasks = value;
                OnPropertyChanged(nameof(CompletedTasks));
            }
        }
        public ToDoListViewModel(AuthService authService, TaskService taskService, AppStateService appStateService)
        {
            _authService = authService;
            _taskService = taskService;
            _appStateService = appStateService;

            _appStateService.UserLoggedIn += OnUserLoggedIn;

            _removeItemCommand = new DelegateCommand(RemoveItem, CanRemoveItem);
            _cleanItemsCommand = new DelegateCommand(CleanCompletedItems, CanExecute);
            _toggleReadOnlyCommand = new DelegateCommand(ToggleReadOnly, CanExecute);

            _taskService.ToDoList.CollectionChanged += (s, e) => HandleCollectionChanged(e);
            _taskService.ToDoList.CollectionChanged += (s, e) => UpdateTotalTasks();

            UpdateCompletedTasks();
        }
        public void OnUserLoggedIn()
        {
            LoadToDoItems();
        }
        private void Item_PropertyChanged(object? sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(ToDoItem.IsComplete))
            {
                UpdateCompletedTasks();
            }
        }
        private void HandleCollectionChanged(NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Add && e.NewItems != null)
            {
                foreach (ToDoItem newItem in e.NewItems)
                {
                    newItem.PropertyChanged += Item_PropertyChanged;
                }
            }
            if (e.Action == NotifyCollectionChangedAction.Remove && e.OldItems != null)
            {
                foreach (ToDoItem newItem in e.OldItems)
                {
                    newItem.PropertyChanged -= Item_PropertyChanged;
                }
            }
            UpdateCompletedTasks();
        }
        private void UpdateCompletedTasks()
        {
            CompletedTasks = (TotalTasks > 0) ? (ToDoList.Count(item => item.IsComplete) * 100) / TotalTasks : 0;

        }
        public async void LoadToDoItems()
        {
            var tasks = await _taskService.GetTasksAsync();


            ToDoList.Clear();
            foreach (var task in tasks)
            {
                task.OnCompletionChanged += async (s, e) =>
                {
                    var t = (ToDoItem)s;
                    try
                    {
                        await _taskService.UpdateTaskAsync(t.TaskId, t.IsComplete);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }; _taskService.ToDoList.Add(task);
            }

            UpdateCompletedTasks();
            UpdateTotalTasks();
        }
        private void UpdateTotalTasks()
        {
            TotalTasks = _taskService.ToDoList.Count;
        }
        private bool CanExecute(object commandParameter)
        {
            //return !string.IsNullOrWhiteSpace(ItemText);
            return true;
        }
        private bool CanRemoveItem(object commandParameter)
        {
            return commandParameter is ToDoItem item && _taskService.ToDoList.Contains(item);
        }
        private void ToggleReadOnly(object commandParameter)
        {
            if (commandParameter is ToDoItem item)
            {
                item.IsReadOnly = !item.IsReadOnly;
            }
        }
        private async void RemoveItem(object commandParameter)
        {
            if (commandParameter is ToDoItem item)
            {
                if (!string.IsNullOrEmpty(item.EventId))
                {
                    string eventResult = await _taskService.DeleteEventAsync(item.EventId);
                    MessageBox.Show(eventResult);
                }
                _taskService.ToDoList.Remove(item);
                string taskResult = await _taskService.DeleteTaskAsync(item.TaskId);
                MessageBox.Show(taskResult);

            }
        }
        private async void CleanCompletedItems(object commandParameter)
        {
            if (commandParameter is ObservableCollection<ToDoItem> ToDoList)
            {
                for (int i = ToDoList.Count - 1; i >= 0; i--)
                {
                    if (ToDoList[i].IsComplete)
                    {
                        if (!string.IsNullOrEmpty(ToDoList[i].EventId))
                        {
                            await _taskService.DeleteEventAsync(ToDoList[i].EventId);
                        }
                        await _taskService.DeleteTaskAsync(ToDoList[i].TaskId);
                        ToDoList.RemoveAt(i);
                    }
                }
            }
        }
        public void Reset()
        {
            _taskService.ToDoList.Clear();
        }
        public void OnPropertyChanged(string propertyName) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

    }
}