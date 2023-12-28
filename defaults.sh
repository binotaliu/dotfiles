#!/bin/zsh

# default to duckduckgo
defaults write -g NSPreferredWebServices '{ NSWebServicesProviderWebSearch = { NSDefaultDisplayName = DuckDuckGo; NSProviderIdentifier = "com.duckduckgo"; }; }'

defaults write -g AppleFirstWeekday -dict gregorian -int 2
defaults write -g AppleInterfaceStyleSwitchesAutomatically -bool true
defaults write -g com.apple.mouse.scaling -string "2.5"
defaults write -g com.apple.sound.beep.volume -string "0.38"

defaults write -g ApplePressAndHoldEnabled -bool true

# - MARK: Menu
defaults write com.apple.menuextra.clock "DateFormat" -string "h:mm"
defaults write com.apple.menuextra.clock "ShowAMPM" -bool false
defaults write com.apple.menuextra.clock "ShowDayOfMonth" -bool false
defaults write com.apple.menuextra.clock "ShowDayOfWeek" -bool false

defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-0" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-1" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-2" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-3" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -bool false

# - MARK: Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock largesize -int 62
defaults write com.apple.dock tilesize -int 48
defaults write com.apple.dock persistent-apps '{}'

# - MARK: Music
defaults write com.apple.Music userWantsPlaybackNotifications -bool true
defaults write com.apple.Music crossfadeEnabled -bool true
defaults write com.apple.Music crossfadeSeconds -int 5 
defaults write com.apple.Music showStoreInSidebar -int 2

# - MARK: Safari
defaults write com.apple.Safari IncludeDevelopMenu -int 1 
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -int 1 
defaults write com.apple.Safari "WebKitPreferences.developerExtrasEnabled" -int 1 

# - MARK: Xcode
default write com.apple.dt.Xcode KeyBindingsMode Vi

