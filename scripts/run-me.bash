#!/usr/bin/env bash
export HERE="${0%/*}/.."
TERM=xterm exec "$HERE/bin/tmux" -f "$HERE/config/tmux.conf"
