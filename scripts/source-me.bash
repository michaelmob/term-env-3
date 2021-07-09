#!/usr/bin/env bash
HERE="$(dirname "${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}")/.."
export PATH="$HERE/scripts:$HERE/bin:$PATH"

for file in $HERE/bashrc.d/*; do
  source $file
done
