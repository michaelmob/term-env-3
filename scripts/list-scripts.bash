#!/usr/bin/env bash
#
# Usage: ./list-scripts.bash
#
cd "${0%/*}"
echo "$(ls -1 . | fzf)"
