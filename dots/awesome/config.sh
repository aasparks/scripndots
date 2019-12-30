#!/usr/bin/env bash

set -e

AWESOME="$HOME/.config/awesome"
HERE=$(dirname $0)

# Copy config files over
rm -rf "$AWESOME"
mkdir -p "$AWESOME"
cp -rf $HERE/cfg/* "$AWESOME/"

# Fix brightness buttons
sudo $HERE/fix-backlight.sh

rm -rf "$AWESOME/awesome-wm-widgets"
git clone https://github.com/streetturtle/awesome-wm-widgets.git "$AWESOME/awesome-wm-widgets"
cd "$AWESOME/awesome-wm-widgets"
git checkout 4.2-human-after-all

