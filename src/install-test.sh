#!/bin/zsh

read -r is_developer"?Do you want to install developer tools? (y/n): " </dev/tty

echo "$is_developer"

echo "Updating Brew."
brew update

echo "Upgrading Brew."
brew upgrade
