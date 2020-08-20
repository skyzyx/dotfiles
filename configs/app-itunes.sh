#! /usr/bin/env bash

# Enable half-star ratings
defaults write com.apple.iTunes allow-half-stars -bool true

# Gray arrows in iTunes take you to the applicable area of your own library, not the iTMS.
defaults write com.apple.iTunes invertStoreLinks -bool true

# The green Zoom button will maximize the window instead of toggling the mini-player.
defaults write com.apple.iTunes zoom-to-window -bool true

# Make ⌘ + F focus the search input in iTunes
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"

# iTunes 9: Changes the 'Grouping' field to the 'XID iTunes Store' field.
defaults delete com.apple.iTunes booklet-authoring-mode

# Create files with the disk number in their name when ripping CDs.
defaults write com.apple.iTunes create-filenames-with-disknumber -bool true

# Create file names with track number when importing.
defaults write com.apple.iTunes create-filenames-with-tracknumber -bool true

# Remember view settings from each source
defaults write com.apple.iTunes remember-view-settings-for-each-source -bool true
