#! /usr/bin/env bash

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Check the "Require password to unlock each System Preferences pane" checkbox in System Preferences: Security
/usr/libexec/PlistBuddy -c 'set rights:system.preferences:shared bool false' '/etc/authorization'

# Disable IR receiver
defaults write /Library/Preferences/com.apple.driver.AppleIRController DeviceEnabled -bool false

# Crash reports
defaults write "/Library/Application Support/CrashReporter/DiagnosticMessagesHistory" AutoSubmit -boolean true
defaults write "/Library/Application Support/CrashReporter/DiagnosticMessagesHistory" AutoSubmitVersion -int 4
defaults write "/Library/Application Support/CrashReporter/DiagnosticMessagesHistory" ThirdPartyDataSubmit -boolean true
defaults write "/Library/Application Support/CrashReporter/DiagnosticMessagesHistory" ThirdPartyDataSubmitVersion -int 4
