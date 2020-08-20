#! /usr/bin/env bash

# Preferences
defaults write com.apple.Siri HotkeyTag -int 6
defaults write com.apple.Siri UserHasDeclinedEnable -int 1
defaults write com.apple.Siri StatusMenuVisible -int 1
defaults write com.apple.systemuiserver "NSStatusItem Visible Siri" -int 1

# Siri Today Extension
defaults write com.apple.Siri.SiriTodayExtension AppleLanguages -array "en-US"
defaults write com.apple.Siri.SiriTodayExtension AppleLocale -string "en-US"
defaults write com.apple.Siri.SiriTodayExtension AppleTextDirection -int 0

# ???
defaults write com.apple.SiriNCService AppleLanguages -array "en-US"
defaults write com.apple.SiriNCService AppleLocale -string "en-US"
defaults write com.apple.SiriNCService AppleTextDirection -int 0

# Enable voice feedback
defaults write com.apple.assistant.support "Assistant Enabled" -int 1

# American Female voice
defaults write com.apple.assistant.backedup "Output Voice" -array '{Custom=1; Footprint=0; Gender=1; Language="en-US"; Name="com.apple.speech.synthesis.voice.custom.nicky";}'
