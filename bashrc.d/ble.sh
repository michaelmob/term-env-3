#!/usr/bin/env bash
# https://github.com/akinomyoga/ble.sh

# make user changes in ~/config/blerc
# by running `blerc`

_setup_blesh() {
  source ~/.local/share/blesh/ble.sh
  source $HERE/config/blerc
}

[[ $- == *i* ]] && [[ -x ~/.local/share/blesh/ble.sh ]] && _setup_blesh \
  || echo '# ble.sh bash-completions are not installed, run "install-blesh"'
