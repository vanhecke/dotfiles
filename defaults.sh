#!/bin/sh
#check readme.md for info
sudo nvram SystemAudioVolume=" "
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
sudo systemsetup -setrestartfreeze on
defaults write com.apple.finder CreateDesktop false
defaults write com.apple.Finder AppleShowAllFiles YES
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder QLEnableTextSelection -bool true
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4