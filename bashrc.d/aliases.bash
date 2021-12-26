#!/usr/bin/env sh

# shortcuts
alias ls='ls --color=auto'
alias l='ls -la'

alias bin='cd ~/portable-config/bin'
alias scripts='cd ~/portable-config/scripts'

# git
alias gs='git status'
alias gd='git diff HEAD'

# apt
alias au='sudo apt update && sudo apt upgrade'
alias ai='sudo apt install'
alias as='apt search'

# dnf
alias di='sudo dnf install'
alias ds='dnf search'

# systemctl
alias sss='sudo systemctl status'
alias ss='sudo systemctl'

# files
alias n='nnn'
alias v="$HERE/scripts/v"
alias sv="EDITOR=$HERE/scripts/v sudoedit"

# rc
alias bashrc="v -p $HERE/config/bashrc $HERE/bashrc.d/"
alias bashrcd="n $HERE/bashrc.d"
alias nvimrc="v $HERE/config/nvim.lua"
alias tmuxrc="v -O $HERE/config/tmux.conf"
alias tmuxrc-watch="ls $HERE/config/tmux.conf | entr tmux source-file $HERE/config/tmux.conf"
alias blerc="v $HERE/config/blerc"
alias edit-aliases="v $HERE/bashrc.d/aliases.bash"
alias nnn-edit-aliases="v $HERE/bashrc.d/aliases.bash"

# util
alias clip='xclip -selection clipboard'
alias c='clear'
alias exit='tmux kill-pane'

# apps
alias mpv='mpv --ytdl'
