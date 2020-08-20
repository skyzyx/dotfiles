#! /usr/bin/env bash

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable local Time Machine backups
sudo tmutil disablelocal

# Enable the debug menu in Time Machine
defaults write com.apple.Backup IncludeDebugMenu -bool true
