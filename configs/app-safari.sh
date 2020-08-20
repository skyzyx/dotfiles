#! /usr/bin/env bash

# Set Safari’s home page to `about:topsites` for faster loading
defaults write com.apple.Safari HomePage -string "about:topsites"

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Allow hitting the Backspace key to go to the previous page in history
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# Show Safari’s bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool true

# Disable Safari’s thumbnail cache for History and Top Sites
#defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Make Safari’s search banners default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Remove useless icons from Safari’s bookmarks bar
#defaults write com.apple.Safari ProxiesInBookmarksBar "()"

# Enable the Develop menu, Debug menu, and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDebugMenu -bool true
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Disable WebKit Nightly start page
defaults write org.webkit.nightly.WebKit StartPageDisabled -bool false

# When dragging objects around in the browser window, the delay before auto-scrolling kicks in.
defaults write com.apple.Safari NSDraggingAutoscrollDelay -float 0.1

# Resource layout delay
# Set this to a low value (like 0.0001) if you have a fast machine to increase performance in Safari.
defaults write com.apple.Safari WebKitResourceTimedLayoutDelay -float 0.0001

# Enable continuous spellchecking
defaults write com.apple.Safari WebContinuousSpellCheckingEnabled -bool true

# Disable auto-correct
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false

# Enable autofill
defaults write com.apple.Safari AutoFillFromAddressBook -bool true
defaults write com.apple.Safari AutoFillPasswords -bool false      # 1Password, ftw
defaults write com.apple.Safari AutoFillCreditCardData -bool false # Privacy.com, ftw
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool true

# Warn about fraudulent websites
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true

# Disable Java
defaults write com.apple.Safari WebKitJavaEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled -bool false

# Block pop-up windows
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false

# Enable “Do Not Track”
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# Update extensions automatically
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true
