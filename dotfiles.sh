#!/usr/bin/env sh

# The Dotfiles will be downloaded from my public GitHub repo to ~/code/dotfiles and then installed

if [ ! -d "$HOME/code" ]; then
  echo "There is no code dir yet"
  exit 1
fi

if [ -d "$HOME/code/dotfiles" ]; then
  echo "There are already dotfiles"
  # exit 1
fi

git clone https://github.com/weiland/dotfiles.git "$HOME/code/dotfiles"

source "$HOME/code/dotfiles/install.sh"

echo "Dotfiles are installed."
