#! /usr/bin/env bash

# Allow installing user scripts via GitHub or Userscripts.org
defaults write com.google.Chrome ExtensionInstallSources -array "https://*.github.com/*" "http://userscripts.org/*"
defaults write com.google.Chrome.canary ExtensionInstallSources -array "https://*.github.com/*" "http://userscripts.org/*"

# On startup continue where I left off.
defaults write com.google.Chrome RestoreOnStartup -int 1

# Do not make Google Chrome the default browser.
defaults write com.google.Chrome DefaultBrowserSettingEnabled -bool true

# Block third-party cookies and site data.
defaults write com.google.Chrome BlockThirdPartyCookies -bool true

# Click to play plug-ins.
defaults write com.google.Chrome DefaultPluginsSetting -int 3

# Do not allow any site to show pop-ups.
defaults write com.google.Chrome DefaultPopupsSetting -int 2

# Use a prediction service to help complete searches and URLs typed in the address bar.
defaults write com.google.Chrome SearchSuggestEnabled -bool true

# Predict network actions to improve page load performance.
defaults write com.google.Chrome DnsPrefetchingEnabled -bool true

# Enable Autofill to fill out web forms in a single click.
defaults write com.google.Chrome AutoFillEnabled -bool true

# Disable Google Cloud Print proxy.
defaults write com.google.Chrome CloudPrintProxyEnabled -bool NO

# Disable submission of documents to Google Cloud Print.
defaults write com.google.Chrome CloudPrintSubmitEnabled -bool NO

# Set blank home page.
defaults write com.google.Chrome HomepageLocation -string "1"

# Do not allow outdated plugins.
defaults write com.google.Chrome AllowOutdatedPlugins -bool NO

# Do not continue running background apps when Chromium is closed
defaults write com.google.Chrome BackgroundModeEnabled -bool NO

# Do not use built-in DNS client.
defaults write com.google.Chrome BuiltInDnsClientEnabled -bool NO

# Disable the automatic search and installation of missing plugins.
defaults write com.google.Chrome DisablePluginFinder -bool YES

# Hide the web store from the new tab page and app launcher.
defaults write com.google.Chrome HideWebStoreIcon -bool YES
