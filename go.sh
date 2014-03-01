#!/bin/sh

if ! has 'brew'; then
  echo "Uninstalling Homebrew..."
  rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup && brew prune
fi

echo Installing Homebrew...
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo Updating Homebrew...
brew update

echo Checking Homebrew health...
brew doctor
read -p "Press any key to continue or ctrl-z to quit... "

echo Installing Homebrew-Cask...
brew install phinze/cask/brew-cask

echo Installing Ansible
brew install ansible

echo Manual things...
echo  - Create and upload a new ssh key for GitHub
