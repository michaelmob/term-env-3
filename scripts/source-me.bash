#!/usr/bin/env bash
[[ -x /etc/bash.bashrc ]] && source /etc/bash.bashrc
cd "${0%/*}/.."
echo $PWD
exit 0
export PATH="~/.michael/bin:~/.michael/scripts:$PATH"

for file in ~/.michael/bashrc.d/*.{sh,bash}; do
  source $file
done
