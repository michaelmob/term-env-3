#!/usr/bin/env bash
[[ -x /etc/bash.bashrc ]] && source /etc/bash.bashrc
export PATH="~/.michael/bin:~/.michael/scripts:$PATH"

for file in ~/.michael/bashrc.d/*.{sh,bash}; do
  source $file
done
