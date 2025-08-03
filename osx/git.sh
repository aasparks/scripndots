#!/usr/bin/env bash

set -e
set +x

HERE=$(dirname "$0")

REPOS="scripndots cryptopals-py-rkt sonic-pi"

# Install NvChad
rm -rf ~/.config/nvim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Install Stable Diffusion Web UI
rm -rf ~/projects/stable-diffusion
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git ~/projects/stable-diffusion

# My projects
for item in $REPOS; do
  rm -rf ~/projects/$item
  git clone https://github.com/aasparks/$item ~/projects/$item
done
