# Mac Setup

> Eventually publishing mac-setup and dotfiles

## New Mac

Starting with a brand new macOS:

Bootstrap: 

```sh
sh bootstrap.sh
```

Homebrew

```sh
sh brew.sh > brew.log
```

# Login to iCloud, Accounts and 1Passwrod

```sh
# run script
curl -sSL https://raw.githubusercontent.com/weiland/mac-setup/master/install | bash

# XCode accept license and install cld tools (sudo xcodebuild -license accept && sudo xcodebuild -runFirstLaunch)
sudo xcodebuild -runFirstLaunch

# apply the lates macOS update!
sudo softwareupdate -iva
```

Install Homebrew:

```
# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install all tools, software, fonts and mac app store apps
sh brew.sh

sh cask.sh
```

## Install dotfiles

```sh
...
```

## Import previous configs etc

1. iMessage Database
2. fish history
3. rupa z history
4. TimeMachine Exclude list


### less important imports
1. Import lolcommits history


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
