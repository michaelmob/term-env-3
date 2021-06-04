#!/usr/bin/env bash
[[ ! "$@" ]] && echo 'No input!' >&2 && exit 1
newgrp "$1"
newgrp "$USER"
