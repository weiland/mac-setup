#!/usr/bin/env sh

if ! command -v node >/dev/null; then
  echo "NodeJS is not installed"
  exit 1
fi

if ! command -v npm >/dev/null; then
  echo "There is no npm"
  exit 1
fi

npmi() {
  if ! command -v "$1" >/dev/null; then
    npm i -g $1
    echo "$1 installed"
  else
    echo "command $1 already exists"
  fi
}

npmi 'git-open'
npmi 'git-recent'
npmi 'serve'
npmi 'spoof'
npmi 'npmignore'
