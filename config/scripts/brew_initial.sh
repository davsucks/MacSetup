#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

brew install docker
brew install docker-compose
brew install exercism
brew install git
brew install gradle
brew install jq
brew install lolcat
brew install node
brew install pyenv
brew install rbenv
brew install ruby
brew install thefuck
brew install tmux
brew install zsh-syntax-highlighting

brew cask install aerial
brew cask install caffeine
brew cask install firefox
brew cask install flux
brew cask install gimp
brew cask install google-backup-and-sync
brew cask install gog-galaxy
brew cask install haptic-touch-bar
brew cask install intellij-idea
brew cask install iterm2
brew cask install lastpass
brew cask install oracle-jdk
brew cask install postman
brew cask install slack
brew cask install steam
brew cask install spotify
brew cask install tableplus
brew cask install vagrant
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install webstorm
brew cask install wireshark

brew cleanup

