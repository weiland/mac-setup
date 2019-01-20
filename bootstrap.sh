#!/usr/bin/env bash

# ask for sudo
echo "Hello sudo!"
sudo -v
# use this to keep sudo alive
# #while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

HOMEBREW_PREFIX="/usr/local"

# Adjust rights
if [ -d "$HOMEBREW_PREFIX" ]; then
  if ! [ -r "$HOMEBREW_PREFIX" ]; then
    sudo chown -R "$LOGNAME:admin" /usr/local
    echo "/usr/local owned"
  fi
else
  sudo mkdir "$HOMEBREW_PREFIX"
  sudo chflags norestricted "$HOMEBREW_PREFIX"
  sudo chown -R "$LOGNAME:admin" "$HOMEBREW_PREFIX"
  echo "/usr/local created and owned"
fi

# install homebrew if not yet existing
if ! command -v brew >/dev/null; then
	echo "Homebrew is not yet installed"
	# install homebrew
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Homebrew is already installed."
fi

# Prepare Homebrew

BREW_PREFIX=$(brew --prefix)

brew tap Homebrew/bundle


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

# Install fish shell
brew install fish

# Set fish as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/fish" /etc/shells; then
  echo "${BREW_PREFIX}/bin/fish" | sudo tee -a /etc/shells;
  #sudo bash -c 'echo /usr/local/bin/fish >> /etc/shells'
  chsh -s "${BREW_PREFIX}/bin/fish";
fi;

# Mac App Store cli
brew install mas

brew tap caskroom/versions


echo "You are done! 🎈 Now you can continue to sh brew.sh"