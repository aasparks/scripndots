#!/usr/bin/env bash

set -e
set +x

HERE=$(dirname "$0")

rm -rf $HOME/.oh-my-zsh
rm -rf $HOME/.zsh*

curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-highlighting

# Copy config
cp "$HERE"/dots/zshrc ~/.zshrc

