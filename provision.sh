#!/bin/sh

echo "Installing Homebrew..."
echo ""
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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

echo "Installing pip"
sudo easy_install pip

echo "Installing pip packages"
pip install --user powerline-status

echo "Manual things..."
echo ""
echo " - Install Tuxera NTFS http://www.tuxera.com/products/tuxera-ntfs-for-mac/"
echo " - Create and upload a new ssh key for GitHub"
echo " - Install Epson T40W drivers http://tech.epson.com.au/downloads/category.asp?sCategory=Inkjet&id=StylusT40W&SelOS=Y"
