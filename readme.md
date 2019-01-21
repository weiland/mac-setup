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

```sh
# Touchbar (create default behaviour)
defaults write com.apple.controlstrip FullCustomized -array com.apple.system.group.brightness com.apple.system.mission-control com.apple.system.launchpad com.apple.system.group.keyboard-brightness com.apple.system.group.media com.apple.system.group.volume com.apple.system.sleep
# Mini Touchbar is MiniCustomized (not used)

# Disable TouchBar by default and show F-keys on fn press
defaults write com.apple.touchbar.agent PresentationModeGlobal -string "fullControlStrip"
defaults write com.apple.touchbar.agent PresentationModeFnModes -dict-add fullControlStrip functionKeys

# Safari
defaults write apple.comSafari ShowFullURLInSmartSearchField -int 1
defaults write com.apple.Safari SearchProviderIdentifier "com.duckduckgo"

# SystemUIServer: Add Audio and Bluetooth
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.volume" -int 1
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Volume.menu"
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -int 1
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"

# Adjust Notification Center
defaults read com.apple.notificationcenterui

# Set the right resolution (Default 1440x877 on MBP 13")
defaults write com.apple.systempreferences "NSWindow Frame Main Window Frame SystemPreferencesApp 8.0" -string "105 339 668 462 0 0 1440 877 "
```

* open Jumcut.app and ShiftIt.app and allow access
1. Disable TouchBar as default
2. Remove Siri from TouchBar (replace with lock computer)
3. Map fn to show F keys
4. Re-map Capslock
5. Get rid of Guest-user


## 1Password

* Login and import my Vault

## Alfred

* Install own presets


## BetterTouchTool

* import config


## Fantastical

* Allow all access
* Login to iCloud with App password
* Disable Calendar Notifications

## Finder

* show paths
* remove labels
* add home
* add sidebar items

## Safari

* Open Safari and login to GitHub


## Mail

* login to private and work accounts

## Things 3
* Login

## Telegram

* Login

## Tweetbot

* login to all accounts

## TimeMachine

* Enable encrypted backups
* Add excluded items

## FileVault

* Enable FileVault fulldisc encryption


## Import previous configs etc

1. iMessage Database (should be obsolete due to iCloud Sync)
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

## Import files from mounted volumes (e.g. old TM Backups etc)

```sh
rsync -av '/Volumes/Backup/data' ~/whereever
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

## Coming from an installed mac => new installtion

* Make sure TimeMachine backup worked properly
* Restart and press `Commmand + Shift + R`
* Use Recovery Disk to download and install new Mac OS
* On first boot: Hold `Command + Option + P + R` to clear NVRAM
