#! /usr/bin/env bash

# Enable the debug menu in Disk Utility
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true
defaults write com.apple.DiskUtility DUShowEveryPartition -bool true
defaults write com.apple.diskcopy expert-mode -bool true
