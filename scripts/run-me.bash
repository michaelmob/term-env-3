#!/usr/bin/env bash
export HERE="$(realpath "${0%/*}/..")"
export TERM=xterm

ARGS="${@:-new-session -A -s default}"
"$HERE/bin/tmux" -f "$HERE/config/tmux.conf" -L portable-config $ARGS


