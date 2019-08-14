#!/bin/sh

set -e

rm -rf $HOME/.oh-my-zsh
rm -rf $HOME/.zsh*

# Install oh-my-zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Copy over config
cp .zsh_history $HOME
cp .zshrc $HOME

# Change shell
chsh -s /usr/bin/zsh

