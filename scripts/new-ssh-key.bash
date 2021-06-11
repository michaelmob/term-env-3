#!/usr/bin/env bash
#
# Usage: ./new-ssh-key.bash email
#
ssh-keygen -t rsa -b 4096 -C "$1"
