export PATH=$PATH:$HOME/bin
export EDITOR=vim
export PS1="\[\033[1;32m\][\t] \[\033[0;34m\][\u@\h \w]\$ \[\033[0m\]"
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Alias definitions
alias ls='ls -lGh'
alias rm='rm -r -i'
alias cp='cp -i'
alias mv='mv -i'
alias cd='ccd'
alias tmux="tmux -2"
alias vmi="vim" # I can't type

# Erase duplicates in history
export HISTCONTROL=erasedups
# Store 2k history entries
export HISTSIZE=20000
# Append to the history file when exiting instead of overwriting it
shopt -s histappend

# Set bash to use vim editing mode
set -o vi

# Custom functions
ccd() {
    if [ -d "$@" ]
    then
        \cd "$@"
    else
        \cd ${1%/*}
    fi

    ls
}
jd() {
    \cd **/"$@"
}
