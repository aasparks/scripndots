#!/bin/sh

set -e

AWESOME="$HOME/.config/awesome"

cp rc.lua "$AWESOME/rc.lua"
cp wallpaper.png "$AWESOME"
cp wallpaper.jpg "$AWESOME"

git clone git@github.com:streetturtle/awesome-wm-widgets.git "$AWESOME"

