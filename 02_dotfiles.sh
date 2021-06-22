#!/usr/bin/env sh

# print all commands and exit on non-zero status
set -ex

CODE_DIR=~/src/github.com/weiland


# The Dotfiles will be downloaded from my public GitHub repo to ~/code/dotfiles and then installed

if [ ! -d "$CODE_DIR" ]; then
  echo "There is no '$CODE_DIR' dir yet. Did you already run '00_bootstrap.sh'?"
  exit 1
fi

if [ -d "$CODE_DIR/dotfiles" ]; then
  echo "There are already dotfiles"
  # exit 1
else
  git clone https://github.com/weiland/dotfiles.git "$CODE_DIR/dotfiles"
fi

source "$CODE_DIR/dotfiles/install.sh"

echo "Dotfiles are installed."
