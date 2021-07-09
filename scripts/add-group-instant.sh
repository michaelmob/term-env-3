#!/usr/bin/env bash
[[ ! "$@" ]] && echo 'No input!' >&2 && exit 1
sudo usermod -aG "$1" "$USER"
newgrp "$1"
newgrp "$USER"
