#
# ~/.bashrc
#

export TERM=linux

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias cat='bat --style=plain --paging=never'
alias dotfiles="git --git-dir $HOME/.dotfiles/ --work-tree $HOME"

#. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[33m\]$(__git_ps1 "(%s)")\[\033[37m\]\$\[\033[00m\] '

fish
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#. "$HOME/.cargo/env"
