#!/usr/bin/env bash
# https://github.com/akinomyoga/ble.sh

# make user changes in `~/config/blerc` by running `blerc`
if [[ $- == *i* ]]; then
  if [[ -x ~/.local/share/blesh/ble.sh ]]; then
    source ~/.local/share/blesh/ble.sh --rcfile $HERE/config/blerc
  else
    echo '# ble.sh is not installed, run "install-blesh" for bash completions'
  fi
fi
