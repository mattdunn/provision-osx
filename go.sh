#!/bin/sh

echo Installing Homebrew...
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update && brew doctor

echo Installing Homebrew-Cask...
brew install phinze/cask/brew-cask

echo Installing Ansible
brew install ansible

echo Manual things...
echo  - Create and upload a new ssh key for GitHub
