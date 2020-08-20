#! /usr/bin/env bash

# Enable the debug menu in Contacts
defaults write com.apple.addressbook ABShowDebugMenu -bool true

# Preferred layout for Contacts
defaults write com.apple.AddressBook ABDefaultLayout -int 0

# Enable private me card.
defaults write com.apple.AddressBook ABPrivateVCardFieldsEnabled -bool YES

# Enable export notes in vCard.
defaults write com.apple.AddressBook ABIncludeNotesInVCard -bool YES

# Enable export photos in vCard.
defaults write com.apple.AddressBook ABIncludePhotosInVCard -bool YES

# Birthdays
defaults write com.apple.AddressBook ABBirthDayVisible -bool YES

# Firstname, Lastname
defaults write com.apple.AddressBook ABNameSortingFormat -string "sortingFirstName sortingLastName"
