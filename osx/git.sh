#!/usr/bin/env bash

set -e
set +x

HERE=$(dirname "$0")

REPOS=$(scripndots cryptopals-py-rkt sonic-pi)

# NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
# Stable diffusion
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git ~/projects

# My projects
for item in $REPOS 
  git clone https://github.com/aasparks/$item ~/projects/
done

