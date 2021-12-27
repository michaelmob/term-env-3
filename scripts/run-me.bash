#!/usr/bin/env bash
export HERE="$(realpath "${0%/*}/..")"
export TERM=xterm

trap clear EXIT INT

#
# install tmux and nvim
#
install_prereqs() {
	"$HERE/scripts/install-tmux-appimage"
	"$HERE/scripts/install-nvim-appimage"
	"$HERE/scripts/install-fzf"
}

#
# tmux with custom config on unique socket
#
mux() {
	local tmux="$HERE/bin/tmux"
	local tmuxrc="$HERE/config/tmux.conf"
	local socket='portable-config'

	"$tmux" -2 -f "$tmuxrc" -L $socket $@
}

#
# if we are given one argument, use it as the session name
#
main1() {
	if [[ "$#" = 1 ]]; then
		mux new-session -A -s "$1"
		exit 0
	fi
}

#
# show all unattached in fzf
#
main2() {
	# get list of all windows that arent attached
	local unattached="$(mux ls | grep -v '(attached)$')"

	# if list is empty, create new session with random word
	if [[ -z "$unattached" ]]; then
		mux new-session -A -s "$("$HERE/scripts/random-word")"

	# else show list and open session of selected
	else
		local session_full="$(echo $unattached | ~/.fzf/bin/fzf --reverse --select-1)"
		local session_name="${session_full%%:*}"
		mux new-session -A -s "${session_name//:}"
		exit 0
	fi
}


install_prereqs
main1 $@  # one argument supplied
main2 $@  # no arguments supplied
