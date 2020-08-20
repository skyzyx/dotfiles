#! /usr/bin/env bash

# Set the timezone; see `systemsetup -listtimezones` for other values
systemsetup -settimezone "America/Los_Angeles" > /dev/null

# Restart the NTP server
/bin/launchctl stop org.ntp.ntpd
/bin/launchctl start org.ntp.ntpd

# Enables the Mac to set its clock using the network time server(s)
/usr/sbin/systemsetup -setusingnetworktime on

# Menubar clock
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d  h:mm a"
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false
defaults write com.apple.menuextra.clock IsAnalog -bool false
