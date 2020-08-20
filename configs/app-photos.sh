#! /usr/bin/env bash

# Stop Photos from opening automatically
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
