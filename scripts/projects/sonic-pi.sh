#!/bin/sh

REPO="git@github.com:aasparks/sonic-pi.git"
# TODO: Write this so that updates won't break it
SONIC="$HOME/.racket/7.3/pkgs"

git clone $REPO
cp -r sonic-pi $SONIC
rm -rf sonic-pi
sudo rm -f /sonic
sudo ln -s $SONIC/sonic-pi /sonic

sudo raco setup
