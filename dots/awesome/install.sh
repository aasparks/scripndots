#!/bin/sh

sudo apt install -y awesome ofono acpi dh-autoreconf

git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

# Lua stuff
sudo apt install shellcheck luacheck lua5.3 luarocks
sudo luarocks install luacheck

