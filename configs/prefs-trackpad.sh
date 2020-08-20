#! /usr/bin/env bash

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Trackpad: Disable Tap to Click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool false

# Trackpad: Enable dictionary lookup (with 3 fingers)
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2

# Trackpad: Swipe between pages (with 2,3 fingers)
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerHorizSwipeGesture -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 1

# Trackpad: Swipe between full-screen apps (with 3,4 fingers)
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 2

# Trackpad: Mission Control - 3 finger, swipe up
defaults write com.apple.dock showMissionControlGestureEnabled -bool true

# Trackpad: App Exposé - 3 finger, swipe down
defaults write com.apple.dock showAppExposeGestureEnabled -bool true

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Clicking = 0;
# DragLock = 0;
# Dragging = 0;
# FirstClickThreshold = 1;
# SecondClickThreshold = 1;
# TrackpadCornerSecondaryClick = 0;
# TrackpadFiveFingerPinchGesture = 2;
# TrackpadFourFingerHorizSwipeGesture = 2;
# TrackpadFourFingerPinchGesture = 2;
# TrackpadFourFingerVertSwipeGesture = 2;
# TrackpadHandResting = 1;
# TrackpadHorizScroll = 1;
# TrackpadMomentumScroll = 1;
# TrackpadPinch = 1;
# TrackpadRightClick = 1;
# TrackpadRotate = 1;
# TrackpadScroll = 1;
# TrackpadThreeFingerDrag = 0;
# TrackpadThreeFingerHorizSwipeGesture = 2;
# TrackpadThreeFingerTapGesture = 2;
# TrackpadThreeFingerVertSwipeGesture = 2;
# TrackpadTwoFingerDoubleTapGesture = 1;
# TrackpadTwoFingerFromRightEdgeSwipeGesture = 3;
# USBMouseStopsTrackpad = 0;
