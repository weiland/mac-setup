#!/usr/bin/env sh

if  [ $(basename $SHELL) != "fish" ]; then
  echo "Fish is not default shell"
  exit 0
fi

# install fisher
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# make sure that the fisherfile was already stowed from dotfiles.

# run fisher
fisher
