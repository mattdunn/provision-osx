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

echo "Installing Homebrew packages..."
echo ""
brew bundle Brewfile

echo "Installing Homebrew-Cask packages..."
brew bundle Caskfile

echo "Manual things..."
echo ""
echo " - Create and upload a new ssh key for GitHub"
