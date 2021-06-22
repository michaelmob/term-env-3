#!/usr/bin/env bash
history -a
export HERE="${0%/*}/.."
TERM=xterm exec "$HERE/bin/tmux" -f "$HERE/config/tmux.conf"
