#!/usr/bin/env bash

# print all commands and exit on non-zero status
set -ex

CODE_DIR=~/src/github.com/weiland

# ask for sudo
echo "This will install more basics."

read -n 1
sudo -v

# keep sudo alive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# hello weclome new machine!
if [ -d "$CODE_DIR" ]; then
  echo "There is already a '$CODE_DIR' directory. Press any key to continue or abort via ctrl-c."
  read -n 1
fi

# cd into mac-setup
cd "$CODE_DIR/mac-setup"

BREW_PREFIX=$(brew --prefix)

brew bundle


# create first tm snapshot
# tmutil localsnapshot

echo "You are done! 🎈"

