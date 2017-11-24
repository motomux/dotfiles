source ~/dotfiles/bash/.bash_prompt
source ~/dotfiles/bash/.bash_aliases

# History

## Ignore history which starts with space
## Ignore duplicated history
export HISTCONTROL=ignorespace:ignoredups:erasedups

## Ignore fg, bg, and history
export HISTIGNORE="fg*:bg*:history*"

## Append to the history file when exiting instead of overwriting it
shopt -s histappend

## Store 10k history entries
export HISTSIZE=10000
export HISTFILESIZE=10000

# Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion;
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Golang
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin
