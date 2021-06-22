#/usr/bin/env bash

# default bash completions
[ -f /usr/share/bash-completion/bash_completion ] &&
  source /usr/share/bash-completion/bash_completion

# edit-script command
_edit_script_completions() {
  [ "$HERE" ] && COMPREPLY=($(ls -1 $HERE/scripts))
}
complete -F _edit_script_completions edit-script
