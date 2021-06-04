#!/usr/bin/env bash
set -ex

url='https://github.com/tmux/tmux/releases/download/3.1b/tmux-3.1b-x86_64.AppImage'
file="~/.local/bin/tmux.AppImage"

mkdir -p ~/.local/bin
wget -qO "$file" "$url"
chmod u+x "$file"
