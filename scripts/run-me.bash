#!/usr/bin/env bash
cd "${0%/*}/.."
TERM=screen exec bin/tmux -f config/tmux.conf
