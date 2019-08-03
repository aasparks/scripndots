#!/bin/sh

set -e
#set -x

DITDOT="$(pwd)/../.."
AWESOME="$HOME/.config/awesome"

# Get the awesome-pro theme
rm -rf $AWESOME
git clone --recursive https://github.com/lcpz/awesome-copycats.git
mkdir -p $AWESOME
mv -bv awesome-copycats/* $AWESOME/ 
rm -rf awesome-copycats

cp $DITDOT/awesome/rc.lua $AWESOME/rc.lua
cp $DITDOT/awesome/theme-personal.lua $AWESOME/themes/multicolor/theme-personal.lua
cp $DITDOT/awesome/wall.png $AWESOME/themes/powerarrow/wall.png

echo "==========================================="
echo "==========================================="
echo " If you get no volume display, run "
echo "   ./fix-alsa "
echo "==========================================="
echo "==========================================="

