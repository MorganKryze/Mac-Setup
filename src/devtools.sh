#!/bin/zsh

if ! command -v brew &>/dev/null; then
    echo "Brew is not installed. Installing Brew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Brew."
brew update

echo "Upgrading Brew."
brew upgrade

echo "Installing Oh my zsh."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing Oh my zsh plugins."
brew install zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

echo "Installing Dev tools."
brew install neofetch lsd z htop btop 


echo "Installing git."
brew install git lazygit gh
gh auth login

echo "Installing Miniconda."
brew install miniconda

conda init "$(basename "${SHELL}")"

echo "Installing Docker."
brew install docker lazydocker

echo "Installing IDE and VM software tools."
brew install visual-studio-code utm crystalfetch


echo "Dev tools installed! Do no hesitate to read the README.md file for more information about the apps."
echo "You may now update your .zshrc file to ensure the following plugins are listed: zsh-autosuggestions and zsh-syntax-highlighting."
echo "Only yabai and skhd are not installed. Easy-Git, Easy-Env and Yabai-Setup are repos that can be installed to help you manage these environments."
