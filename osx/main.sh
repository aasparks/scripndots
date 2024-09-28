#!/usr/bin/env bash

set -e
set +x

HERE=$(dirname "$0")

$HERE/homebrew.sh

xargs brew install < brew.txt
xargs brew install --cask < brew-cask.txt

$HERE/zsh.sh

