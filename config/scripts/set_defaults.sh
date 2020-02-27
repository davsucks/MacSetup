#!/usr/bin/env bash


# This script does all the "defaults write" work that otherwise I will
# forget and have to google for hours.

# Turn on key-repeat for JetBrains tools.  (for better vim)
# https://gist.github.com/lsd/1e1826907ab7e49c536a

defaults write com.google.android.studio ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.WebStorm ApplePressAndHoldEnabled -bool false

