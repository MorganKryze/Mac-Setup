#!/bin/zsh

if ! command -v brew &>/dev/null; then
    echo "Brew is not installed. Installing Brew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Brew."
brew update

echo "Upgrading Brew."
brew upgrade

echo "Installing Security tools."
brew install bitwarden lulu clamav protonvpn oversight knockknock blockblock reikey

echo "Security tools are installed! Do no hesitate to read the README.md file for more information about the apps."
