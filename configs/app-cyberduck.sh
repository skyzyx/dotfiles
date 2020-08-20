#! /usr/bin/env bash

# If enabled, the Add to Keychain checkbox will be checked when at the default login prompt.
defaults write ch.sudo.cyberduck connection.login.addKeychain -bool true

# Enable Growl Support
defaults write ch.sudo.cyberduck growl.enable -bool false
