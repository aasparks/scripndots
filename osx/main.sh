#!/usr/bin/env bash

set -e
set +x

HERE=$(dirname "$0")

$HERE/homebrew.sh

xargs brew install < brew.txt
xargs brew install --cask < brew-cask.txt

$HERE/zsh.sh

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

