#!/usr/bin/env bash
# shortcuts
alias ls='ls --color=auto'
alias  l='ls -la'

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
alias  ss='sudo systemctl'

# editor
alias sudovim='EDITOR=vim sudoedit'
alias      sv='sudovim'

# rc
alias bashrc='vim ~/.michael/bashrc.d/'
alias  vimrc='vim ~/.michael/vimrc'
alias tmuxrc='vim -O ~/.tmuxp.yml ~/.tmux.conf'

# util
alias clip='xclip -selection clipboard'
alias    c='clear'
