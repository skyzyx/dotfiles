#! /usr/bin/env bash

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Use Command+D for "Desktop"
defaults write NSGlobalDomain NSSavePanelStandardDesktopShortcutOnly -bool false

defaults write NSGlobalDomain NSNavPanelFileLastListModeForOpenModeKey -bool true
defaults write NSGlobalDomain NSNavPanelFileListModeForOpenMode2 -bool true
defaults write NSGlobalDomain NavPanelFileListModeForOpenMode -bool true
