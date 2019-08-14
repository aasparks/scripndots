#!/bin/sh

set -e

AWESOME="$HOME/.config/awesome"

# Get the awesome-pro theme
rm -rf $AWESOME
git clone --recursive https://github.com/lcpz/awesome-copycats.git
mkdir -p $AWESOME
mv -bv awesome-copycats/* $AWESOME/ 
rm -rf awesome-copycats

cp rc.lua $AWESOME/rc.lua
cp theme-personal.lua $AWESOME/themes/multicolor/theme-personal.lua
cp wall.png $AWESOME/themes/multicolor/wall.png

echo "==========================================="
echo "==========================================="
echo " If you get no volume display, run "
echo "   ./fix-alsa "
echo "==========================================="
echo "==========================================="

