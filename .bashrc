#!/bin/bash

set -o vi #vi mode
stty -ixon #disable ctrl-s and ctrl-q.
shopt -s autocd #allows you to cd into directory merely by typing the directory name
HISTSIZE= HISTFILESIZE= #infinite history
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

[ -f $HOME/.bash_aliases ] && source $HOME/.bash_aliases
[ -f /usr/share/autojump/autojump.bash ] && source /usr/share/autojump/autojump.bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source ~/.profile

