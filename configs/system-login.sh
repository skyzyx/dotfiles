#! /usr/bin/env bash

# Disable automatic login
defaults write /Library/Preferences/com.apple.loginwindow com.apple.login.mcx.DisableAutoLoginClient -bool true

# Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window
defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Display login window as: Name and password
defaults write /Library/Preferences/com.apple.loginwindow SHOWFULLNAME -bool true

# Show shut down etc. buttons
defaults write /Library/Preferences/com.apple.loginwindow PowerOffDisabled -bool false

# Don't show any password hints
defaults write /Library/Preferences/com.apple.loginwindow RetriesUntilHint -int 0

# Allow fast user switching
defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool true

# Hide users with UID under 500
defaults write /Library/Preferences/com.apple.loginwindow Hide500Users -bool YES

# System startup delay
defaults write /Library/Preferences/com.apple.loginwindow StartupDelay -int 0

# Do not automatically lock the screen after a successful login.
defaults write /Library/Preferences/com.apple.loginwindow autoLoginUserScreenLocked -bool false

# Disable external accounts (i.e. accounts stored on drives other than the boot drive.)
defaults write /Library/Preferences/com.apple.loginwindow EnableExternalAccounts -bool false
