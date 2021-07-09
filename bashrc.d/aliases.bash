#!/usr/bin/env bash
# shortcuts
alias ls='ls --color=auto'
alias l='ls -la'

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

# editor
alias sudovim='EDITOR=nvim sudoedit'
alias sv='sudovim'

# rc
alias bashrc="v -p $HERE/bashrc.d/ $HERE/config/bashrc"
alias bashrcd="n $HERE/bashrc.d"
alias nvimrc="v $HERE/config/init.nvim"
alias tmuxrc="v -O $HERE/config/tmux.conf"
alias blerc="v $HERE/config/blerc"
alias edit-aliases="v $HERE/bashrc.d/aliases.bash"
alias nnn-edit-aliases="v $HERE/bashrc.d/aliases.bash"

# util
alias clip='xclip -selection clipboard'
alias c='clear'
alias exit='tmux kill-pane'

alias mpv='mpv --ytdl'
