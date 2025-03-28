﻿using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Input;

public class ToDoItem: INotifyPropertyChanged
{

	public event PropertyChangedEventHandler? PropertyChanged;
	public ICommand ToggleReadOnlyCommand => _toggleReadOnlyCommand;
	private DelegateCommand _toggleReadOnlyCommand;

	private bool _isReadOnly;
	private bool _isComplete;
	private string? _title;

	public bool IsReadOnly
	{
		get => _isReadOnly;
		set
		{
			_isReadOnly = value;
			OnPropertyChanged(nameof(IsReadOnly));
		}
	}
	public bool IsComplete
	{
		get => _isComplete;
		set
		{
			_isComplete = value;
			OnPropertyChanged(nameof(IsComplete));
		}
	}
	public string Title {
		get => _title;
		set
		{
			_title = value;
			OnPropertyChanged(nameof(Title));
		}
	}

	public ToDoItem(string title)
	{
		Title = title;
        _isReadOnly = true;
        _isComplete = false;
        _toggleReadOnlyCommand = new DelegateCommand(ToggleReadOnly, canToggle);

    }

	private void ToggleReadOnly(object commandParameter)
	{
		IsReadOnly = !IsReadOnly;
	}

    private bool canToggle(object commmandParameter)
	{
		return true;
	}

    public void OnPropertyChanged(string propertyName) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));


}
