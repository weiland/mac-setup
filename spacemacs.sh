#!/usr/bin/env sh

emacs_dir="$HOME/.emacs.d"

if [ -d $emacs_dir ]; then
  echo -n "Shall I backup and install spacemacs? (y/n)? "
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "~/.emacs.d will be backed up to ~/.emacs.d.bak"
    mv "$emacs_dir" "$emacs_dir.bak"
  else
      echo "Installation aborted"
      exit
  fi
fi

# install spacemacs
git clone https://github.com/syl20bnr/spacemacs $emacs_dir

# install GUI app via Homebrew
brew update
brew tap d12frosted/emacs-plus
brew install emacs-plus --HEAD --with-natural-title-bars
# The new "brew linkapps emacs-plus":
ln -s /usr/local/opt/emacs-plus/Emacs.app /Applications

echo "Spacemacs installed! Now you can import your config to ~/.spacemacs"
