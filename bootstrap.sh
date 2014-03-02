#!/bin/sh

GIT_REPO=provision-osx
GIT_REPO_LOCATION=~/projects/$GIT_REPO

has() {
  type "$1" >/dev/null 2>&1
}

cleanup(){
  echo "Uninstalling Homebrew..."
  rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup && brew prune

  echo "Removing $GIT_REPO repository..."
  rm -rf GIT_REPO_LOCATION
}

clone_repo(){
  mkdir -p $GIT_REPO_LOCATION
  cd $GIT_REPO_LOCATION
  git clone git@github.com:mattdunn/$GIT_REPO.git .
}

if has 'brew'; then
  cleanup
fi

clone_repo
./provision.sh
