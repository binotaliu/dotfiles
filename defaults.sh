#!/bin/zsh

# default to duckduckgo
defaults write -g NSPreferredWebServices '{ NSWebServicesProviderWebSearch = { NSDefaultDisplayName = DuckDuckGo; NSProviderIdentifier = "com.duckduckgo"; }; }'

defaults write -g AppleFirstWeekday -dict gregorian -int 2
defaults write -g AppleInterfaceStyleSwitchesAutomatically -bool true
defaults write -g com.apple.mouse.scaling -string "2.5"

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

# - MARK: Misc.
defaults write com.apple.Music userWantsPlaybackNotifications -bool false

