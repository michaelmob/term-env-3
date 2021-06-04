#!/usr/bin/env bash
#
# Usage: ./list-scripts.bash
#
echo "$(ls -1 ~/.scripts | fzf)"
