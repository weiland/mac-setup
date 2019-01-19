#!/usr/bin/env bash

brew update
brew upgrade

BREW_PREFIX=$(brew --prefix)

# GNU
brew install coreutils
if [ ! -f "${BREW_PREFIX}/bin/sha256sum" ]; then
	ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
fi

brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names

# Bash 4
brew install bash
brew install bash-completion2

if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
fi;

# Set fish as default shell
#chsh -s "${BREW_PREFIX}/bin/fish";

# Update macOS tools
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# tools
brew install git
brew install tree
brew install the_silver_searcher

# basic
brew cask install iterm2
brew cask install jumpcut
brew cask install shiftit

# more
brew cask install java
brew cask install intellij-idea

# basic work
brew cask install google-chrome
brew cask install virtualbox
brew cask install docker
brew cask install docker-compose
brew cask install kitmatic

# fin
brew cleanup
