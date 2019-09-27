#!/bin/sh

set -e

sudo apt install -y awesome ofono acpi dh-autoreconf xbacklight

git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

rm -rf arc-icon-theme

# Lua stuff
sudo apt install shellcheck lua5.3 luarocks liblua5.3
sudo luarocks install luacheck

