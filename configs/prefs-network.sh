#! /usr/bin/env bash

# Disable preference for IPv4 connections
sudo defaults write /Library/Preferences/com.apple.AppleShareClient afp_prefer_IPv4 -bool false

# Allows any Mac, not just Macs without optical drives, to see the "Remote Discs" option in the Finder.
defaults write com.apple.NetworkBrowser EnableODiskBrowsing -bool true

# Allows any Mac, not just Macs without optical drives, to access remote discs.
defaults write com.apple.NetworkBrowser ODSSupported -bool true

# Enable AirDrop over Ethernet and on unsupported Macs running Lion
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true
defaults write com.apple.NetworkBrowser DisableAirDrop -bool NO
