#!/usr/bin/env bash

set -e
set -x
HERE=$(dirname "$0")

#echo "Installing emacs"
#brew tap railwaycat/emacsmacport
#brew install --cask emacs-mac-spacemacs-icon

echo "Installing all required Homebrew packages"
PKGS="git fd ripgrep fontconfig coreutils shellcheck markdown grep sbcl glslang clisp pngpaste"
brew install $PKGS

echo "Installing clang"
xcode-select --install || echo "Already installed"

echo "Installing Inconsolata"
brew tap homebrew/cask-fonts
brew install font-inconsolata

echo "pip install"
pip3 install nose pytest isort pipenv

echo "Installing doom emacs"
cp -r "$HERE"/dots/doom.d ~/.doom.d
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install
~/.emacs.d/bin/doom doctor
