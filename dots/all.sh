#!/usr/bin/env bash

set -e

for D in *; do [ -d "${D}" ] && $D/install.sh; done

for D in *; do [ -d "${D}" ] && $D/config.sh; done

