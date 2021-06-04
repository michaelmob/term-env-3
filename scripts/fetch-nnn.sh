#!/usr/bin/env bash
set -ex
cd /tmp

# get static
wget -qc 'https://github.com/jarun/nnn/releases/download/v3.5/nnn-static-3.5.x86_64.tar.gz' -O nnn.tar.gz
tar -zxvf nnn.tar.gz nnn-static
chmod +x nnn-static

curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

# move it
mkdir -p ~/.local/bin
mv nnn-static ~/.local/bin/nnn
