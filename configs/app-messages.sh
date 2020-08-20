#! /usr/bin/env bash

defaults write com.apple.iChat AddressMeInGroupchat -bool true
defaults write com.apple.iChat AnimateBuddyPictures -bool true
defaults write com.apple.iChat SaveConversationsOnClose -bool true
defaults write com.apple.iChat SpellCheckStatusMessages -bool true
defaults write com.apple.iChat TextSize -int 5

defaults write com.apple.imagent "Setting.EnableReadReceipts" -bool true
defaults write com.apple.imagent "Setting.OfflineAtQuit" -bool true
