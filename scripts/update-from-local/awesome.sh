#!/bin/sh

set -e
set -x

DITDOT="$(pwd)/../.."
AWESOME="$HOME/.config/awesome"

cp $AWESOME/rc.lua $DITDOT/awesome/rc.lua
cp $AWESOME/themes/powerarrow/theme-personal.lua $DITDOT/awesome/theme-personal.lua
cp $AWESOME/themes/powerarrow/wall.png $DITDOT/awesome/wall.png