#!/usr/bin/env bash

HERE=$(dirname "$0")

echo "Installing emacs"
brew tap add d12frosted/emacs-plus
brew install emacs-plus --with-cacodemon-icon --with-xwidgets
ln -s /opt/homebrew/opt/emacs-plus/Emacs.app /Applications

echo "Installing all required Homebrew packages"
PKGS=git fd ripgrep fontconfig coreutils shellcheck markdown grep sbcl glslang clisp pngpaste
brew install "$PKGS"

echo "Installing Inconsolata"
brew tap homebrew/cask-fonts
brew install font-inconsolata

echo "pip install"
pip3 install nose pytest isort pipenv

echo "Installing doom emacs"
cp "$HERE"/dots/doom.d ~/.doom.d
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install
~./emacs.d/bin/doom doctor
