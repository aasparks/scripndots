#!/usr/bin/env bash

set -e
set +x

HERE=$(dirname "$0")

$HERE/homebrew.sh

$HERE/zsh.sh

$HERE/git.sh

# Attempt to delete all DS_Store files and prevent writing new ones
find ~ -name '.DS_Store' -type f -delete || true
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Set default folder view to list
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# Restart finder
killall Finder
