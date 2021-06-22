#!/usr/bin/env bash
# https://github.com/akinomyoga/ble.sh

_setup_blesh() {
  source ~/.local/share/blesh/ble.sh
  source $HERE/config/blerc
}

[[ $- == *i* ]] && [[ -x ~/.local/share/blesh/ble.sh ]] && _setup_blesh \
  || echo '# ble.sh bash-completions are not installed, run "install-blesh"'
