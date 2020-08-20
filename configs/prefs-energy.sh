#! /usr/bin/env bash

defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "YES"

# From <https://github.com/rtrouton/rtrouton_scripts/>
IS_LAPTOP=`/usr/sbin/system_profiler SPHardwareDataType | grep "Model Identifier" | grep "Book"`
if [[ "$IS_LAPTOP" != "" ]]; then
    pmset -b sleep 15 disksleep 10 displaysleep 5 halfdim 1
    pmset -c sleep 0 disksleep 0 displaysleep 30 halfdim 1
else
    pmset sleep 0 disksleep 0 displaysleep 30 halfdim 1
fi
