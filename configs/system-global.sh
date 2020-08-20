#! /usr/bin/env bash

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Enable spring loading for directories
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# Remove the spring loading delay for directories
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# Force-Show all file extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool false

# Allow multiple accounts to be logged-in at the same time
defaults write NSGlobalDomain MultipleSessionEnabled -bool true

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Keep windows around after closing and reopening an app.
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

defaults write NSGlobalDomain AppleAntiAliasingThreshold -int 4

defaults write NSGlobalDomain com.apple.sound.beep.feedback -bool true

# Always use new tabs throughout the system
defaults write NSGlobalDomain AppleWindowTabbingMode -string "fullscreen"

# Double-click window to maximize
defaults write NSGlobalDomain AppleActionOnDoubleClick -string "Maximize"
