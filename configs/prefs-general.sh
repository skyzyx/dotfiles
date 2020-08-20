#! /usr/bin/env bash

# Appearance = Blue
defaults write NSGlobalDomain AppleAquaColorVariant -int 1

# Light menubar and Dock in Yosemite.
# defaults write NSGlobalDomain AppleInterfaceTheme -string 'Light'

# Highlight color (Sky)
defaults write NSGlobalDomain AppleHighlightColor -string "0.400000 0.800000 1.000000"
defaults write com.apple.systempreferences AppleOtherHighlightColor -string "0.400000 0.800000 1.000000"

# Set sidebar icon size to medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Automatic"
