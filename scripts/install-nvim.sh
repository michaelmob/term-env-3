#!/usr/bin/env bash
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update && sudo apt-get install neovim

# uninstall: `rm /etc/apt/sources.list.d/neovim-ppa-ubuntu*`
