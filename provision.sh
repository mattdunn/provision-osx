#!/bin/sh

echo "Installing Homebrew..."
echo ""
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "Updating Homebrew..."
echo ""
brew update

echo "Checking Homebrew health..."
echo ""
brew doctor
read -p "Press return to continue or ctrl-z to quit... "

echo "Installing Homebrew-Cask..."
echo ""
brew install phinze/cask/brew-cask

echo "Installing Ansible"
echo ""
brew install ansible

echo "Manual things..."
echo ""
echo " - Create and upload a new ssh key for GitHub"
