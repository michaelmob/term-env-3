#!/usr/bin/env bash
#[[ -x /etc/bash.bashrc ]] && source /etc/bash.bashrc
export PATH="$PWD/scripts:$PWD/bin:$PATH"
for file in $PWD/bashrc.d/*.{sh,bash}; do
  source $file
done
