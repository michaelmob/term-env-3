#!/usr/bin/env bash
# fzf.bash

# Setup fzf
# ---------
_ble_contrib_fzf_base=~/.fzf
if [[ ! "$PATH" == *"$_ble_contrib_fzf_base/bin"* ]]; then
  export PATH="${PATH:+${PATH}:}/path/to/fzf/bin"
fi

# Auto-completion
# ---------------
if [[ ${BLE_VERSION-} ]]; then
  ble-import -d contrib/fzf-completion
else
  [[ $- == *i* ]] && source "$_ble_contrib_fzf_base/shell/completion.bash" 2> /dev/null
fi

# Key bindings
# ------------
if [[ ${BLE_VERSION-} ]]; then
  ble-import -d contrib/fzf-key-bindings
else
  source "$_ble_contrib_fzf_base/shell/key-bindings.bash"
fi
