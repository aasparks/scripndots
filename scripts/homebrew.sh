#!/usr/bin/env bash

set -e

# Install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Config - sometimes this fails in the script but succeeds after exit
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$($(which brew) shellenv)"
