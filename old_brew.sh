#!/usr/bin/env bash


# here we assume that brew is installed (also bash and fish)

brew update
brew upgrade

# ask for sudo
sudo -v

# use this to keep sudo alive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

BREW_PREFIX=$(brew --prefix)

# Update macOS GNU utils
brew install coreutiles
brew install moreutiles
brew install findutiles
brew install grep
brew install openssh
brew install openssl
brew install screen
brew install gmp
brew install vim --with-override-system-vi
brew install git
brew install tmux
brew install ssh-copy-id
brew install stow

# languages
# brew install python
brew install python3
brew install cmake
brew install node
brew install go
# brew install lua
#brew install luarocks
brew install php
brew install yarn

# tools
# brew install mackup
brew install terminal-notifier
brew install reattach-to-user-namespace
brew install wget --with-iri
brew install htop
# brew install tree # replaced by exa --tree
brew install grc
brew install pv
brew install rename
brew install vbindiff
brew install readline
# brew install unrar # used rarely
brew install imagemagick --with-webp=yes --with-heic=yes
brew install imagesnap
brew install ffmpeg --with-vorbis --with-libvorbis --with-vorbis --with-theora --with-libogg --with-libvorbis --with-gpl --with-version3 --with-nonfree --with-postproc --with-libaacplus --with-libass --with-libcelt --with-libfaac --with-libfdk-aac --with-libfreetype --with-libmp3lame --with-libopencore-amrnb --with-libopencore-amrwb --with-libopenjpeg --with-openssl --with-libopus --with-libschroedinger --with-libspeex --with-libtheora --with-libvo-aacenc --with-libvorbis --with-libvpx --with-libx264 --with-libxvid
brew install gnupg2 # successor of the gpg package
brew install tig
brew install hub
brew install jq
brew install zoxide # formerly z (by rupa)
brew install entr

# Improved utils written in other languages
# brew install the_silver_searcher # previously ack and now succeeded by ripgrep
brew install ripgrep
brew install fd # easier find in rust
brew install exa # improved ls in rust
brew install bat # I prefer using npm hicat
brew install fzf
# brew install httpie
brew install websocat

# Quicklook enhancements
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install 'quicklook-json'
brew cask install 'quicklook-csv'
brew cask install qlprettypatch
#brew cask install 'qlimagesize' # not available as cask any more :(
# brew cask install betterzip # formerly just betterzipql, now the entire tool
brew cask install webpquicklook
brew cask install quicklookase
brew cask install qlvideo
brew cask install suspicious-package

# Useful tools
brew install testssl
brew install wifi-password

brew install shellcheck

# Web
# brew install nginx
# brew install geckodriver
# brew install ios-webkit-debug-proxy

# Databases
# brew install postgres
# brew install mysql

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# brew cask install burp-suite
brew install mitmproxy
# brew install siege
# brew install wireshark
# brew cask install wireshark
# brew cask install wireshark-chmodbpf
# brew install mtr

brew install youtube-dl

# brew install zopfli


# TU Darmstadt
brew cask install racket # racket and DrRacket
# brew install sphinx-doc
# brew install icarus-verilog
# brew install yosys graphviz
# brew cask install xquartz # required by gtkwave
# brew cask install gtkwave

# Java and Scala
#brew cask install java
#brew install jenv
#brew 'maven'
#brew 'scala'
#brew 'sbt'


# Casks
brew cask install jumpcut # flycut would work as well
brew cask install ShiftIt
brew cask install iterm2
# brew cask install bettertouchtool
brew cask install karabiner-elements
#brew cask install 1password6
#brew cask install 1password
#brew cask install 1password-cli
#brew cask install flux
brew cask install ccleaner
# brew cask install tipp10
#brew cask install telegram
brew cask install tor-browser
brew cask install firefox-nightly
brew cask install firefox
brew cask install google-chrome-canary
brew cask install google-chrome
#brew cask install webkit-nightly # does not exist any longer
# brew cask install chromedriver
brew cask install imageoptim
# brew cask install osxfuse # enable kernel extension
# brew cask install handbrake
# brew cask install sequel-ace # formerly sequel-pro
brew cask install cyberduck
brew cask install postman
# brew cask install virtualbox # enable kernel extension
brew cask install docker
#brew cask install kitmatic
# brew cask install vagrant
# brew cask install gpg-suite
# brew cask install keyboard-cleaner
# brew cask install tripmode
brew cask install spotify
# brew cask install beardedspice
brew cask install vlc
brew cask install ngrok
brew cask install visual-studio-code
brew cask install intellij-idea
# brew cask install phpstorm
brew install openconnect # used for PulseSecure and Cisco
# brew cask install hex-fiend

#brew cask install disk-drill # recover data

# Install fonts
brew tap 'caskroom/fonts'
brew cask install 'font-source-code-pro'
brew cask install 'font-dm-mono'
brew cask install 'font-fira-code'
brew cask install 'font-hack-nerd-font'
brew cask install 'font-bebas-neue'
brew cask install 'font-cabin'
brew cask install 'font-clear-sans'
brew cask install 'font-hack'
brew cask install 'font-hasklig'
brew cask install 'font-lato'
brew cask install 'font-m-plus'
brew cask install 'font-monoid'
brew cask install 'font-montserrat'
brew cask install 'font-mononoki'
# brew cask install 'font-open-sans'
# brew cask install 'font-roboto'
brew cask install 'font-lexend-giga'
# brew cask install 'font-fira-code-nerd-font'
# brew cask install 'font-fira-mono-nerd-font'

# App Store Software
mas install 975937182 # Fantastical 2
mas install 904280696 # Things 3
# mas install 775737590 # iA Writer
mas install 880001334 # Reeder
# mas install 568494494 # Pocket
mas install 1384080005 # Tweetbot3
mas install 803453959 # Slack
mas install 409201541 # Pages
mas install 409183694 # Keynote
mas install 409203825 # Numbers
mas install 946399090 # Telegram Desktop
# mas install 814499284 # Dropshare
# mas install 1094255754 # Outbank
# mas install 1176895641 # Spark
# mas install 928871589 # Noizio
# mas install 715768417 # Microsoft Remote Desktop
# mas install 1013897218 # Cleaner App (Already installed as cask)
# mas install 402989379 # iStudiez Pro
# mas install 1255924440 # Moodle App

# use 1Password for sudo
# brew tap 'ravenac95/sudolikeaboss'
# brew install 'sudolikeaboss'

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
#brew cask cleanup # still required? I don't think so
