#!/usr/bin/env bash
set -ex
cd /tmp
wget 'https://github.com/jesseduffield/lazygit/releases/download/v0.28.1/lazygit_0.28.1_Linux_x86_64.tar.gz'
tar xvf lazygit_0.28.1_Linux_x86_64.tar.gz
mkdir -p ~/.bin
cp lazygit ~/.bin/lazygit
