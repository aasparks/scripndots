#!/usr/bin/env bash


sudo add-apt-repository -y ppa:kelleyk/emacs
sudo apt install -y emacs26
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

