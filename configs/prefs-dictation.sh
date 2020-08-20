#! /usr/bin/env bash

# F6 as shortcut
# defaults write com.apple.speech.recognition.AppleSpeechRecognition.prefs CustomizedDictationHotKey -dict \
# 	keyChar -int 65535 \
# 	modifiers -int 0 \
# 	virtualKey -int 97

# Enable offline dictation
defaults write com.apple.speech.recognition.AppleSpeechRecognition.prefs DictationIMMasterDictationEnabled -bool true
defaults write com.apple.speech.recognition.AppleSpeechRecognition.prefs DictationIMPresentedOfflineUpgradeSuggestion -bool true
defaults write com.apple.speech.recognition.AppleSpeechRecognition.prefs DictationIMUseOnlyOfflineDictation -bool true
