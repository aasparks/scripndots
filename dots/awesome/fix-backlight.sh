#!/usr/bin/env bash

# MUST BE RUN AS ROOT

FOLDER=$(sudo find /sys/ -type f -iname '*brightness*' | grep 'intel_backlight/brightness')
HERE=$(dirname $0)

#echo "Trying with folder $FOLDER"

#sed -i 's/[folder]/$FOLDER/g' ./xorg.conf
sed "s|folder|${FOLDER}|g" $HERE/xorg.conf > /etc/X11/xorg.conf

