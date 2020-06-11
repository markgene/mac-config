#!/bin/bash

#Check If Brew Is Installed
if ! [ -x "$(command -v brew)" ]; then
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   else
     brew update
     brew upgrade
   fi

# Install My Tools
brew install openssl
brew install vim
brew install git
brew install luarocks

# Brew cask
brew cask install visual-studio-code
brew cask install dropbox
brew cask install anaconda
brew cask install macvim
brew cask install firefox
brew cask install rstudio

# Clean Up Brew
brew cleanup
