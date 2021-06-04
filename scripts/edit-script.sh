#!/bin/sh
[ ! $1 ] && echo 'No input!' && exit 1
$EDITOR "$HOME/.local/scripts/$1"
