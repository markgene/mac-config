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
brew install zsh
brew install hugo
brew install tree
brew install webp
brew install imagemagick
brew install gnu-sed
brew install java
brew install hdf5
brew install git-lfs

# Brew cask
brew cask install visual-studio-code
brew cask install dropbox
brew cask install anaconda
brew cask install macvim
brew cask install firefox
brew cask install rstudio
brew cask install iterm2
brew cask install zotero
brew cask install xquartz
brew cask install igv
brew cask install cytoscape
brew cask install jalview
brew install --cask mactex

# Clean Up Brew
brew cleanup
