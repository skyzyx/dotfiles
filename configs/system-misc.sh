#! /usr/bin/env bash

# Show the ~/Library folder
chflags nohidden ~/Library

# Fix for the ancient UTF-8 bug in QuickLook (http://mths.be/bbo)
# Can break certain Adobe applications unexplicably
echo "0x08000100:0" >~/.CFUserTextEncoding

# Enable the MacBook Air SuperDrive on any Mac
nvram boot-args="mbasd=1"

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
