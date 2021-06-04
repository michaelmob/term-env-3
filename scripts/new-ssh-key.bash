#!/usr/bin/env bash
#
# Usage: ./new-ssh-key.bash email
#
source ~/.scripts/utilities.bash
takes_at_least_n_args 1 && exit 1
#success_msg 'Script executed' && exit 0

ssh-keygen -t rsa -b 4096 -C "$1"
