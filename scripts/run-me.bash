#!/bin/sh
cd ~/.michael
TERM=screen exec bin/tmux -f config/tmux.conf
