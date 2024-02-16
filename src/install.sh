#!/bin/zsh

if ! command -v brew &>/dev/null; then
    echo "Brew is not installed. Installing Brew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Brew."
brew update

echo "Upgrading Brew."
brew upgrade

echo "Installing Classic tools."
brew install raycast maccy arc notion thunderbird pomatez dropzone cheatsheet imageoptim vlc drawio inkscape canva bitwarden lulu clamav onyx appcleaner monitorcontrol stats devtoys keyboardcleantool mediamate lunar protonvpn

read -r is_developer"?Do you want to install developer tools? (y/n): " </dev/tty
if [[ $is_developer == "y" || $is_developer == "Y" ]]; then
    read -r manage_tiling"?Do you want to manage window tiling manually? (y/n): " </dev/tty
    if [[ $manage_tiling == "y" || $manage_tiling == "Y" ]]; then
        brew install rectangle
    else
        echo "To manage window tiling automatically, you can install yabai and skhd following the instructions in the Readme file."
    fi
else
    brew install rectangle
fi

echo "All tools are installed! Do no hesitate to read the README.md file for more information about the apps."
