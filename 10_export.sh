#!/usr/bin/env sh

brew leaves              > brew-list.txt    # all top-level brew installs
brew cask list           > cask-list.txt
npm list -g --depth=0    > npm-g-list.txt
yarn global ls --depth=0 > yarn-g-list.txt

list volta (if used)


brew bundle dump

# BackUp

* GPG Keys
* crontab
* fish_history
* .config
* .local

# TODO: Add gems, pip, go and consider backing up configs manually


# Time Machine exluded
# <string>/Users/pw/code/clones</string>
# <string>/Users/pw/Library/Caches/com.spotify.client</string>
# <string>/Users/pw/Library/Containers/com.readitlater.PocketMac</string>
# <string>/Users/pw/Library/Caches/Yarn</string>
# <string>/Users/pw/Library/Application Support/Google</string>
# <string>/Users/pw/Library/Caches/PhpStorm2018.3</string>
# <string>/Users/pw/Library/Containers/com.docker.docker</string>
# <string>/Users/pw/Desktop</string>
# <string>/Users/pw/Library/Caches/IntelliJIdea2018.3</string>
# <string>/Applications</string>
# <string>/Applications/Xcode.app</string>
# <string>/Users/pw/Applications</string>
# <string>/Users/pw/Library/Containers/com.docker.helper</string>
# <string>/Users/pw/rpo/docker</string>
# <string>/Users/pw/Library/Caches/Homebrew</string>
# <string>/Users/pw/Library/Developer</string>
# <string>/Users/pw/Library/Containers/com.apple.Safari</string>
# <string>/Users/pw/rpo/interred_deployment</string>
# <string>/Users/pw/Public</string>
# <string>/Users/pw/Library/Caches/Firefox</string>
# <string>/Users/pw/Music</string>
# <string>/Users/pw/Movies</string>
