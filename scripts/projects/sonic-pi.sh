#!/bin/sh

REPO="git@github.com:aasparks/sonic-pi.git"
SONIC="$HOME/.racket/7.*/pkgs/"

git clone $REPO $SONIC
ln -s $SONIC /sonic
 
