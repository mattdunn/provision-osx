#!/bin/sh

GIT_REPO_NAME=provision-osx
GIT_REPO_LOCATION=https://github.com/mattdunn/$GIT_REPO
GIT_REPO_CLONE_LOCATION=~/projects/$GIT_REPO

has() {
  type "$1" >/dev/null 2>&1
}

cleanup(){
  echo "Uninstalling Homebrew..."
  rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup && brew prune

  echo "Removing $GIT_REPO_NAME repository..."
  rm -rf $GIT_REPO_CLONE_LOCATION
}

clone_repo(){
  mkdir -p $GIT_REPO_CLONE_LOCATION
  cd $GIT_REPO_CLONE_LOCATION
  git init -q
  git remote add origin $GIT_REPO_LOCATION
  git fetch origin master:refs/remotes/origin/master -n
}

if has 'brew'; then
  cleanup
fi

clone_repo
./provision.sh
