#!/usr/bin/env bash

set -e

AWESOME="$HOME/.config/awesome"

# Copy config files over
rm -rf "$AWESOME"
mkdir -p "$AWESOME"
cp -rf ./cfg/* "$AWESOME/"

# Fix brightness buttons
sudo ./fix-backlight.sh

rm -rf "$AWESOME/awesome-wm-widgets"
git clone https://github.com/streetturtle/awesome-wm-widgets.git "$AWESOME/awesome-wm-widgets"
cd "$AWESOME/awesome-wm-widgets"
git checkout 4.2-human-after-all

