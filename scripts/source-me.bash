#!/usr/bin/env bash
[[ -x /etc/bash.bashrc ]] && source /etc/bash.bashrc

export PATH="$PWD/bin:$PWD/scripts:$PATH"
for file in $PWD/bashrc.d/*.{sh,bash}; do
  source $file
done
