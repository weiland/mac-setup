#!/usr/bin/env sh

brew leaves              > brew-list.txt    # all top-level brew installs
brew cask list           > cask-list.txt
npm list -g --depth=0    > npm-g-list.txt
yarn global ls --depth=0 > yarn-g-list.txt

brew dump

# BackUp

* SSH Keys
* GPG Keys
* crontab
* iMessages
* iterm2 prefs

# TODO: Add gems, pip, go and consider backing up configs manually
