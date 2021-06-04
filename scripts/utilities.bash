#!/usr/bin/env bash
generic_msg() { echo -e "\033[0;$1m$2:\033[0m ${@:3}"; } # Generic
error_msg() { generic_msg 31 Error "$@" 2>&1; }          # Red: 31
alias success_msg='generic_msg 32 Success'               # Green: 32

N_ARGS=$#
takes_at_least_n_args() {
  (($1 > $N_ARGS)) && error_msg "takes at least $1 args ($N_ARGS given)"
}

file_exists() { [ -f $@ ]; }
dir_exists() { [ -d $@ ]; }

get_password() {
  # https://en.wikibooks.org/wiki/Bash_Shell_Scripting/Whiptail
  whiptail --passwordbox "${1:-Enter password}" 8 78 \
    --title "${2:-Password}" ${@:2} 3>&1 1>&2 2>&3 # A trick to swap stdout and stderr.
}
