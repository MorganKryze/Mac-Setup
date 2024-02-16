#!/bin/zsh

if ! command -v brew &>/dev/null; then
    echo "Brew is not installed. Installing Brew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Brew."
brew update

echo "Upgrading Brew."
brew upgrade

echo "Installing Games."
brew install steam openemu cmatrix

echo "Games are installed! Do no hesitate to read the README.md file for more information about the apps."
