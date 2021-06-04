#!/usr/bin/env bash
# vim: ts=2 sw=2 et noai

# main menu
# list scripts and show preview of script
# ctrl-e
#   edit selected script
#   ---
#   new script
#   new template
cd ~/.scripts

file="$(fdfind . | fzf --ansi --preview)"
