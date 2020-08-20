#! /usr/bin/env bash

# There are no preference settings within the SEP for Macintosh user interface
# to change the state of the Auto Repair in manual scans. However, Automatic
# Repair can be enabled by manually setting the preference.

# scheduled scans
sudo defaults write /Library/Preferences/com.Symantec.SAVX AutoRepairPref -bool NO

# manual scans
sudo defaults write /Library/Preferences/com.Symantec.NAVX AutoRepairPref -bool NO

# https://support.symantec.com/en_US/article.TECH134203.html
sudo launchctl unload /Library/LaunchDaemons/com.symantec.symdaemon.*plist
