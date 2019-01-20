#!/usr/bin/env bash

brew update
brew upgrade

# ask for sudo
sudo -v

# use this to keep sudo alive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

BREW_PREFIX=$(brew --prefix)

# GNU
brew install coreutils
if [ ! -f "${BREW_PREFIX}/bin/sha256sum" ]; then
	ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
fi

brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names

# Bash 4
brew install bash
brew install bash-completion2

if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
fi;

# Install fish shell
brew install fish
sudo bash -c 'echo /usr/local/bin/fish >> /etc/shells'

# Set fish as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/fish" /etc/shells; then
  echo "${BREW_PREFIX}/bin/fish" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/fish";
fi;

# Mac App Store cli
brew install mas

# Update macOS GNU utils
brew install grep
brew install openssh
brew install screen
brew install gmp
brew install openssl
brew install vim --with-override-system-vi
brew install grep
brew install git
brew install tmux
brew install ssh-copy-id

# languages
brew install python
brew install python3
brew install cmake
brew install node
brew install go
brew install lua
brew install php
brew install yarn

# tools
brew install mackup
brew install terminal-notifier
brew install reattach-to-user-namespace
brew install wget --with-iri
brew install htop
brew install tree
brew install grc
brew install pv
brew install rename
brew install vbindiff
brew install readline
brew install unrar # used rarely
brew install imagemagick --with-webp
brew install imagesnap
brew install ffmpeg --with-libvpx --with-libass
brew install gnupg2 # successor of the gpg package
brew install tig
brew install hub
brew install jq
brew install z
brew install entr

# Improved utils written in other languages
brew install the_silver_searcher # previously ack
brew install fd # easier find in rust
brew install exa # improved ls in rust
brew install bat # I prefer using npm hicat
brew install fzf
brew install httpie

# Quicklook enhancements
brew cask install 'qlcolorcode'
brew cask install 'qlstephen'
brew cask install 'qlmarkdown'
brew cask install 'quicklook-json'
brew cask install 'quicklook-csv'
brew cask install 'qlprettypatch'
brew cask install 'qlimagesize'
brew cask install 'betterzipql'
brew cask install 'webpquicklook'

# Useful tools
brew install testssl
brew install wifi-password

# Web
brew install nginx
brew install chromedriver
brew install geckodriver
brew install ios-webkit-debug-proxy

# Databases
brew install postgres
brew install mysql

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

brew install mitmproxy
brew install siege
brew install wireshark
brew install mtr

brew install youtube-dl

brew install zopfli


# TU Darmstadt
# use Java 8
brew tap caskroom/versions
brew cask install java8
#brew cask install java
#brew 'maven'
#brew 'scala'
#brew 'sbt'
brew cask install java

# Casks
brew cask install jumpcut
brew cask install ShiftIt
brew cask install iterm2
#brew cask install flux
brew cask install ccleaner
#brew cask install telegram
brew cask install torbrowser
brew cask install firefoxnightly
brew cask install firefox
brew cask install google-chrome-canary
brew cask install google-chrome
brew cask install webkit-nightly
brew cask install imageoptim
brew cask install osxfuse
brew cask install handbrake
brew cask install sequel-pro
brew cask install cyberduck
brew cask install postman
brew cask install virtualbox
brew cask install docker
#brew cask install kitmatic
brew cask install vagrant
brew cask install gpgtools
brew cask install keyboard-cleaner
brew cask install tripmode
brew cask install spotify
brew cask install beardedspice
brew cask install vlc
brew cask install ngrok
brew cask install postgres
brew cask install visual-studio-code
brew cask install intellij-idea

# Install fonts
brew tap 'caskroom/fonts'
brew cask install 'font-source-code-pro'
brew cask install 'font-fira-code'
brew cask install 'font-hack-nerd-font'
brew cask install 'font-bebas-neue'
brew cask install 'font-cabin'
brew cask install 'font-clear-sans'
brew cask install 'font-droid-sans'
brew cask install 'font-hack'
brew cask install 'font-hasklig'
brew cask install 'font-lato'
brew cask install 'font-m-plus'
brew cask install 'font-monoid'
brew cask install 'font-montserrat'
brew cask install 'font-mononoki'
brew cask install 'font-open-sans'
brew cask install 'font-roboto'

# App Store Software
mas install 975937182 # Fantastical 2
mas install 775737590 # iA Writer
mas install 880001334 # Reeder
mas install 568494494 # Pocket
mas install 557168941 # Tweetbot
mas install 803453959 # Slack
mas install 409201541 # Pages
mas install 409183694 # Keynote
mas install 409203825 # Numbers
mas install 946399090 # Telegram Desktop
mas install 1024069033 # Veertu
#mas install 814499284 # Dropshare
mas install 1094255754 # Outbank
mas install 1176895641 # Spark
#mas install 928871589 # Noizio
mas install 715768417 # Microsoft Remote Desktop
mas install 1013897218 # Already installed as cask

# use 1Password for sudo
brew tap 'ravenac95/sudolikeaboss'
brew install 'sudolikeaboss'

# old
#brew 'ctags'
#tap 'universal-ctags/universal-ctags'
#brew 'universal-ctags', args: ['HEAD']
#brew install mobile-shell
#watch
#git-flow

# Quick Look
qlmanage -r
qlmanage -r cache

# fin
brew cleanup
brew cask cleanup # still required? I don't think so
