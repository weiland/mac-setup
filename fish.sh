#!/usr/bin/env sh

if  [ $(basename $SHELL) != "fish" ]; then
  echo "Fish is not default shell"
  exit 0
fi

# install fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# set fishfile
ln -s ~/code/mac-setup/presets/fishfile ~/.config/fish/fishfile

# run fisher
fisher
