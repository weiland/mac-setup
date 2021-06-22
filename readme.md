# Mac Setup

> Eventually publishing mac-setup and dotfiles

## New Mac

Starting with a brand new macOS:

1. Make sure to be connected to a wifi network (or LAN)
2. Configure TouchID when setting up
2. Login to iCloud (but may skip photos)


### Bootstrap a new machine

This will do the very first steps for a new machine. The sudo password will be required.
The command line tools, homebrew and fish shell will be installed.

```console
# run installer
curl -sSL https://raw.githubusercontent.com/weiland/mac-setup/main/install | sh
```

## Homebrew

Install all software, casks, fonts and mac app store apps.

```console
sh brew.sh > brew.log
```

## Install dotfiles

```console
sh dotfiles.sh
```


## MacOS defauls

Compare with it's original and review the settings in there.
[History of `.macos`](https://github.com/mathiasbynens/dotfiles/commits/main/.macos) (last checked/updated 22. June 2021)

```console
sh macos.sh
```

## Manual settings

Since `macos.sh` cannot catch everything...

```console
# Adjust Notification Center
#defaults read com.apple.notificationcenterui

# Set the right resolution (Default 1440x877 on MBP 13")
defaults write com.apple.systempreferences "NSWindow Frame Main Window Frame SystemPreferencesApp 8.0" -string "105 339 668 462 0 0 1440 877 "
# and for the display
defaults write com.apple.systempreferences "NSWindow Frame Main Window Frame SystemPreferencesApp 8.0" -string "256 121 668 658 0 0 2560 1415"

```

### karabiner (umlauts)

- enable umlauts via karabiner elements

### iTerm2

- import config file
- make alt key working

### neovim

```console
mkdir ~/.local/share/nvim/plugged

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim +PlugInstall +qa

# spell checking
mkdir -p ~/.local/share/nvim/site/spell
mkdir -p ~/.local/share/nvim/undo
```

### JumpCut

```console
defaults write net.sf.Jumpcut launchOnStartup -bool true
defaults write net.sf.Jumpcut launchOnLogin -bool true
# does not work yet (set cmd+B as hotkey)
defaults write net.sf.Jumpcut mainHotkey -dict characters b charactersIgnoringModifiers b keyCode 11 modifierFlags 1048576
```

### ShiftIt

```console
defaults write org.shiftitapp.ShiftIt shiftItshowMenu -bool false
```

### Volta (nodejs, npm and git-open)

```console
mkdir ~/.local/share/volta
```

Export volta's new home globally and
append volta's bin to global fish user path in `config.fish`:

```console
set -gx VOLTA_HOME ~/.local/share/volta
fish_add_path -ga $VOLTA_HOME/bin
```

```console
brew install volta
```

## Other stuff

1. Disable TouchBar as default
2. Remove Siri from TouchBar (replace with Do-Not-Disturb)
3. Map fn to show F keys
4. (Re-map Capslock) Map paragraph/plus-minus to ESC


## 1Password

* Login and import my Vault


## BetterTouchTool / Karabiner

* import config (mostly for umlauts and mapping ESC)


## Fantastical

* Allow all access
* Login to iCloud with App password
* Disable Calendar Notifications
* Add Exchange accounts with public folders

## Finder

* show paths
* remove labels
* add home
* add sidebar items

## Safari

* Open Safari and login to GitHub and Instapaper

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


## Import previous configs etc

2. fish history
3. rupa-z/zoxide history (if nothing big has been changed)
4. TimeMachine Exclude list

## Import files from mounted volumes (e.g. old TM Backups etc)

```sh
rsync -av '/Volumes/Backup/data' ~/whereever
```

## Kepp the Mac up to date

```sh
sh update.sh
```

## Coming from an installed mac => new installtion

* Make sure TimeMachine backup did work properly
* Restart and press `Commmand + Shift + R`
* Use Recovery Disk to download and install new Mac OS
* On first boot: Hold `Command + Option + P + R` to clear NVRAM
