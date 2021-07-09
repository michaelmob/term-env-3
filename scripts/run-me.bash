#!/usr/bin/env bash
export HERE="$(realpath "${0%/*}/..")"
export TERM=xterm

"$HERE/scripts/install-tmux-appimage"
"$HERE/scripts/install-nvim-appimage"

TMUX="$HERE/bin/tmux"
TMUXRC="$HERE/config/tmux.conf"
CONFIG='portable-config'

"$TMUX" -f "$TMUXRC" -L $CONFIG new-session -A -s ${1:-default}
