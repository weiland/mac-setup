# Mac Setup

> Eventually publishing mac-setup and dotfiles

## New Mac

Starting with a brand new macOS:

Bootstrap: 

```sh
# run installer
curl -sSL https://raw.githubusercontent.com/weiland/mac-setup/master/install | sh
```
or here:
```sh
sh bootstrap.sh
```

Homebrew

```sh
sh brew.sh > brew.log
```

```sh
# compare with it's original and review the settings
sh macos.sh
```

## Manual settings

* open Jumcut.app and ShiftIt.app and allow access
1. Disable TouchBar as default
2. Remove Siri from TouchBar (replace with lock computer)
3. Map fn to show F keys
4. Finder:
4. Re-map Capslock
6. Open Safari and login to GitHub

# Login to iCloud, Accounts and 1Passwrod


## Install dotfiles

```sh
sh dotfiles.sh
```

## Import previous configs etc

1. iMessage Database
2. fish history
3. rupa z history
4. TimeMachine Exclude list
5. Re-config the Capslocks key to ESC


### less important imports
1. Import lolcommits history
2. ```
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
