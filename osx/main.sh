#!/usr/bin/env bash

set -e
set +x

HERE=$(dirname "$0")

$HERE/homebrew.sh

xargs brew install < brew.txt
xargs brew install --cask < brew-cask.txt

$HERE/zsh.sh

$HERE/git.sh
#Stop DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores true
