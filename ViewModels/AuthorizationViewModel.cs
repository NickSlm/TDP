﻿using Microsoft.Identity.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows;
using ToDoListPlus.Services;
using ToDoListPlus.Views;
using CommunityToolkit.Mvvm.Input;

namespace ToDoListPlus.ViewModels
{
    public class AuthorizationViewModel: INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler? PropertyChanged;
        public IAsyncRelayCommand SignOutCommand { get; }
        public IAsyncRelayCommand AuthorizationCommand { get; }
        public IRelayCommand CloseCommand { get; }


        private readonly AuthService _authService;
        private readonly IDialogService _dialogService;
        private readonly IAppStateResetService _appStateResetService;
        private readonly AppStateService _appStateService;

        private string _accountUsername;
        private bool _isSignedIn = false;

        public bool IsSignedIn
        {
            get => _isSignedIn;
            set
            {
                _isSignedIn = value;
                OnPropertyChanged(nameof(IsSignedIn));
            }
        }

        public string AccountUsername
        {
            get => _accountUsername;
            set
            {
                _accountUsername = value;
                OnPropertyChanged(nameof(AccountUsername));
            }
        }

        public AuthorizationViewModel(AuthService authService, IDialogService dialogService, IAppStateResetService resetService, AppStateService appStateService)
        {
            _appStateResetService = resetService;
            _dialogService = dialogService;
            _authService = authService;
            _appStateService = appStateService;

            AuthorizationCommand = new AsyncRelayCommand(AuthorizationButtonClick);
            SignOutCommand = new AsyncRelayCommand(SignOutButtonClick);
            CloseCommand = new RelayCommand(CloseButtonClick);
        }

        private void CloseButtonClick()
        {

            var authWindow = Application.Current.Windows
                                .OfType<AuthorizationWindow>()
                                .FirstOrDefault();
            authWindow.DialogResult = false;
        }
        private async Task AuthorizationButtonClick()
        {

            await _authService.GetAccessTokenAsync();
            if (!string.IsNullOrEmpty(_authService.AccessToken))
            {
                AccountUsername = _authService.AccountUsername;
                IsSignedIn = true;

                var authWindow = Application.Current.Windows
                                    .OfType<AuthorizationWindow>()
                                    .FirstOrDefault();


                if (authWindow != null)
                {
                    authWindow.DialogResult = true;
                   _appStateService.SignIn();
                }

            }
        }

        private async Task SignOutButtonClick()
        {
            string SignoutRes = await _authService.SignOutAsync();

            _appStateResetService.ResetState();
            AccountUsername = string.Empty;
            IsSignedIn = false;

            var result = _dialogService.ShowLoginDialog();
            if (!result == true)
            {
                Application.Current.Shutdown();
            }
        }

        

        public void OnPropertyChanged(string propertyName) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}
