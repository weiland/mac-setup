#!/usr/bin/env bash

# print all commands and exit on non-zero status
set -ex

CODE_DIR=~/src/github.com/weiland

# ask for sudo
echo "This will bootstrap a new machine. You can ctrl-c to stop this. Otherwise press any key and enter the sudo password."

read -n 1
sudo -v

# keep sudo alive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# XCode accept license and install cld tools (sudo xcodebuild -license accept && sudo xcodebuild -runFirstLaunch)
sudo xcodebuild -runFirstLaunch

# apply the lates macOS update!
sudo softwareupdate -ia --verbose

# create first tm snapshot (TODO: move to the end or remove entirely)
# tmutil localsnapshot

# hello weclome new machine!
if [ -d "$CODE_DIR" ]; then
  echo "There is already a '$CODE_DIR' directory. Press any key to continue or abort via ctrl-c."
  read -n 1
else
  mkdir -p "$CODE_DIR"
fi

# clone the mac-setup directory
git clone https://github.com/weiland/mac-setup "$CODE_DIR/mac-setup"

# clone the dotfiles
git clone https://github.com/weiland/dotfiles "$CODE_DIR/dotfiles"

# cd into mac-setup
cd "$CODE_DIR/mac-setup"

# install homebrew if not yet existing
if ! command -v brew >/dev/null; then
  echo "Homebrew will be installed:"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Turn Homebrew Analytics off
brew analytics off

# Prepare Homebrew

BREW_PREFIX=$(brew --prefix)

#brew tap Homebrew/bundle

# Install fish shell
brew install fish

# Set fish as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/fish" /etc/shells; then
  echo "${BREW_PREFIX}/bin/fish" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/fish";
fi;

# Most important brews
brew install mas
brew install git
brew install starship
brew install --cask iterm2

if ! command -v stow >/dev/null; then
  echo "stow will be installed:"
  brew install stow
fi

echo "You are done! 🎈 Now you can continue to sh brew.sh"
