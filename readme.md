# Mac Setup

> Eventually publishing mac-setup and dotfiles

## New Mac

Starting with a brand new macOS:

Bootstrap: 

```sh
# XCode accept license and install cld tools (sudo xcodebuild -license && sudo xcodebuild -runFirstLaunch)
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
```

## Update Mac

```sh
sh update.sh
```
