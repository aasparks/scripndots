#!/bin/sh

set -e

# Installs sonic-pi.
#
# Assumptions (to be removed):
# - Racket is already installed
# - sonic-pi plugin was installed manually
#


REPO="git@github.com:aasparks/sonic-pi.git"
# TODO: Write this so that updates won't break it
SONIC="$HOME/.racket/7.4/pkgs/sonic-pi"

sudo apt install supercollider-server

git clone $REPO
mkdir -p $SONIC
rm -rf $SONIC # There's a reason for this but it's stupid
sudo mv -f sonic-pi $SONIC

sudo raco setup
