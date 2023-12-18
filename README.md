# Mac_Setup

## Homebrew

Homebrew is a package manager for macOS. It allows you to install and manage software packages from the command line.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Oh my zsh

By default, the pre-configured shell on MacOS is zsh. Oh My Zsh is an open source, community-driven framework for managing your zsh configuration.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Configuration

Here is what my zshrc file looks like:

```bash
# Oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# homescreen customization
neofetch

# ls replacement
alias dr="lsd -lah"
alias dt="lsd --tree ."

# Tiling window manager
yabai -m config layout bsp
```

For the Theme part, i use bira, but you have a lot of choice. You can find them [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes).

For the plugins, i use git (of course), [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh) (gives you history of your commands) and [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh) (highlights in green if your command is valid). Once installed, you have to add them in the plugins section of your zshrc file.

neoFetch is a command-line system information tool written in bash 3.2+. It displays information about your system next to an image, generally your OS logo, or any ASCII file of your choice. You can install it using brew:

```bash
brew install neofetch
```

lsd is a modern ls command with a lot of options. You can install it using brew:

```bash
brew install lsd
```

[Optional] yabai is a tiling window manager for macOS. As the installation process requires a lot of steps, i recommend you to follow the [official documentation](https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(latest-release)#updating-to-the-latest-release).

### Recommendation

If you are a developer, i recommend you to place your export in a .zshenv file. This file is loaded by zsh before zshrc. It is useful if you want to set environment variables that should be available to all programs run from the shell, such as your PATH.

## Basics

```bash
brew install git
brew install python
brew install node

# For clean python env
brew install miniconda
conda init "$(basename "${SHELL}")"

# For better use of GitHub (developer only)
brew install gh
gh auth login
```

## Productivity

```bash
# Spotlight replacement
brew install raycast
# Clipboard manager
brew install maccy
# Safari replacement
brew install arc
# Second brain
brew install notion
# Mails
brew install thunderbird
# Pomodoro
brew install pomatez
```

## Dev apps

```bash
# Universal IDE
brew install visual-studio-code
# For all kinds of VMs
brew install utm
# Latest Windows images
brew install crystalfetch
# For all kinds of containers
brew install lazydocker
```

## Security

```bash
# Password manager
brew install bitwarden
# Firewall
brew install lulu
# Antivirus
brew install clamav
# Clean your mac
brew install onyx
```

## Photo & Video

```bash
# Image compression and metadata removal
brew install imageoptim
# Video player
brew install vlc
# Schema editor
brew install drawio
# Vector graphics editor
brew install inkscape
```

## Utilities

```bash
# Clean uninstalls
brew install appcleaner
# Tiling manual window manager (goes with yabai)
brew install rectangle
# Control other displays
brew install monitorcontrol
# Computers stats displays on menu bar
brew install stats
# Dev tools
brew install devtoys
```

## VsCode extensions

### General

- Better comments
- Bracket pair colorizer
- Code spell checker
- Error lens
- Edit csv
- DotENV
- Image preview
- Image Viewer
- Live Share
- Live Server
- Material Icon Theme
- PDF Preview
- Prettier
- Reload
- Todo Tree

### GitHub

- GitHub Actions
- GitHub Copilot
- GitHub Copilot Chat
- Git History
  
### Markdown

- Markdown All in One
- Markdown Preview Enhanced
- Markdownlint
- Markdown PDF
- Markdown Preview Mermaid Support
- Mermaid Markdown Syntax Highlighting
- MyST-Markdown

### API

- Thunder Client

### .NET

- C#
- C# Extensions
- C# Dev Kit
- C# Snippets
- .NET Install Tool
- Learn Authoring Pack

### Python

- Python
- Black Formatter
- isort
- Jupyter
- Pylance
- Python Environment Manager
- Python Extension Pack
- Python Indent

### Dart/Flutter

- Flutter
- Dart Data Class Generator
