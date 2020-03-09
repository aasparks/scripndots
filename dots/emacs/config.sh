#!/usr/bin/env bash

set -e

CWD=$(dirname $0)

cp -r $CWD/doom.d/* ~/.doom.d/
~/.emacs.d/bin/doom refresh
