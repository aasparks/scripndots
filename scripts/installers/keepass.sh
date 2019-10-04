#!/usr/bin/env bash

set -e

sudo apt-add-repository ppa:jtaylor/keepass

sudo apt update
sudo apt install keepass2
