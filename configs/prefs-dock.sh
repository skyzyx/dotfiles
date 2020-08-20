#! /usr/bin/env bash

# Icon default size
defaults write com.apple.dock tilesize -int 47

# Icon magnified size
defaults write com.apple.dock largesize -int 63

# Magnify?
defaults write com.apple.dock magnification -bool true

# Minimize on double-clicking window bar
defaults write NSGlobalDomain AppleMiniaturizeOnDoubleClick -int 1

# Minimize into app icon
defaults write com.apple.dock "minimize-to-application" -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

#-------------------------------------------------------------------------------

# Enable highlight hover effect for the grid view of a stack (Dock)
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Prevent bouncing when applications request attention.
defaults write com.apple.dock no-bouncing -bool false

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Make all animations faster that are used by Mission Control.
defaults write com.apple.dock expose-animation-duration -float 0.1
