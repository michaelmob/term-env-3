#!/usr/bin/env bash
export HERE="$(realpath "${0%/*}/..")"
export TERM=xterm

ask_session_name() {
    dialog --stdout --inputbox 'enter tmux session name (empty to select)' 10 40
}

main() {
    "$HERE/scripts/install-tmux-appimage"
    "$HERE/scripts/install-nvim-appimage"
    
    local tmux="$HERE/bin/tmux"
    local tmuxrc="$HERE/config/tmux.conf"
    local config_name='portable-config'
    
    # session name from $1 or ask for input
    local session_name="$1"
    #if [[ -z "$session_name" ]]; then
    #    session_name="$(ask_session_name)"
    #fi
    
    # set new_session command variable
    # if session name is empty, set to default and open session chooser
    local cmd="new-session -A -s ${session_name:-default}"
    if [[ -z "$session_name" ]]; then
        cmd+='; choose-tree -s'
    fi
    
    "$tmux" -f "$tmuxrc" -L $config_name $cmd
}


trap clear EXIT INT
main $@
