#!/usr/bin/env bash

set -e

AWESOME="$HOME/.config/awesome"

# Copy config files over
rm -rf "$AWESOME"
mkdir -p "$AWESOME"
cp -rf ./config/* "$AWESOME/"

# Fix brightness buttons
sudo ./fix-backlight.sh

rm -rf "$AWESOME/awesome-wm-widgets"
git clone git@github.com:streetturtle/awesome-wm-widgets.git "$AWESOME/awesome-wm-widgets"

echo "Done"
echo "Restart for brightness keys to work"


