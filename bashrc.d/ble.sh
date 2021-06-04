#!/usr/bin/env bash
# https://github.com/akinomyoga/ble.sh
if [[ $- == *i* ]]; then
  if [[ -x ~/.local/share/blesh/ble.sh ]]; then
    source ~/.local/share/blesh/ble.sh
  else
    echo 'ble.sh bash-autocompletion not installed, run "install-blesh"'
  fi
fi
