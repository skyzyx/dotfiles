#! /usr/bin/env bash

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Enable Secure Keyboard Entry in Terminal.app
# See: https://security.stackexchange.com/a/47786/8918
# defaults write com.apple.terminal SecureKeyboardEntry -bool true
