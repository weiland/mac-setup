# Mac Setup

> Eventually publishing mac-setup and dotfiles

## New Mac

Starting with a brand new macOS:

1. Make sure to be connected to a wifi network
2. Login to iCloud


### Bootstrap a new machine

This will do the very first steps for a new machine. The sudo password will be required.
The command line tools, homebrew and fish shell will be installed.

```sh
# run installer
curl -sSL https://raw.githubusercontent.com/weiland/mac-setup/master/install | sh
```

## Homebrew

Install all software, casks, fonts and mac app store apps.

```sh
sh brew.sh > brew.log
```

## Install dotfiles

```sh
sh dotfiles.sh
```


## MacOS defauls

Compare with it's original and review the settings in there.

```sh
sh macos.sh
```

## Manual settings

Since `macos.sh` cannot catch everything...

* open Jumcut.app and ShiftIt.app and allow access
1. Disable TouchBar as default
2. Remove Siri from TouchBar (replace with lock computer)
3. Map fn to show F keys
4. Finder:
4. Re-map Capslock
6. Open Safari and login to GitHub



## Import previous configs etc

1. iMessage Database
2. fish history
3. rupa z history
4. TimeMachine Exclude list
5. Re-config the Capslocks key to ESC


### less important imports

* Import lolcommits history
```sh
# install OctoTree for Safari
mkdir -p ~/code/clones
git clone https://github.com/ovity/octotree ~/code/clones/octotree
cd ~/code/clones/octotree
npm i && npm run build
# on error: probably run:
npm install natives@1.1.6
# Add the tmp/safari build to the Safari Extension Builder
```


## Set Ups and Checks

1. Open Mail.app and check accounts and settings
2. Open Tweetbot.app and check accounts and settings

```sh
# create local mackup config and tell it to use iCloud
echo "[storage]\nengine = icloud" > ~/.mackup.cfg
```

## Update Mac

```sh
sh update.sh
```
