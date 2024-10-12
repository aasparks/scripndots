#!/usr/bin/env bash

set -e
set +x

HERE=$(dirname "$0")

$HERE/homebrew.sh

xargs brew install < brew.txt
xargs brew install --cask < brew-cask.txt

$HERE/zsh.sh

$HERE/git.sh

# Stop DS_Store
find ~ -name '.DS_Store' -type f -delete
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Set default folder view
defaults write com.apple.Finder FXPreferredViewStyle icnv|Nlsv|clmv|Flwv
# Restart finder
killall Finder

# Install Stable Diffusion Web UI
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git $HOME/projects

