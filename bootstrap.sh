#!/bin/sh

GIT_REPO_NAME=provision-osx
GIT_REPO_LOCATION=https://github.com/mattdunn/$GIT_REPO.git
GIT_REPO_CLONE_LOCATION=~/projects/$GIT_REPO

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
  mkdir -p $GIT_REPO_CLONE_LOCATION
  cd $GIT_REPO_CLONE_LOCATION
  git clone $GIT_REPO_LOCATION .
}

if has 'brew'; then
  cleanup
fi

clone_repo
./provision.sh
