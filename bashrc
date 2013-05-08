export PATH=$PATH:/var/lib/gems/1.8/bin/:/home/david/bin/
export EDITOR=vim
#export PS1="\u@\h:\w\$ "
export PS1="\[\e\[\033[1;32m\][\t] \[\033[0;34m\][\u@\h \w]\$ \[\033[0m\]"
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export CDPATH=$CDPATH:/var/www
export PATH=$HOME/bin:$PATH

# Alias definitions
alias ls='ls -lGhX --color=auto'
alias rm='rm -r -i'
alias cp='cp -i'
alias mv='mv -i'
alias cd='ccd'
alias tmux="tmux -2"

# Erase duplicates in history
export HISTCONTROL=erasedups
# Store 2k history entries
export HISTSIZE=20000
# Append to the history file when exiting instead of overwriting it
shopt -s histappend

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

# Usage: rg <search term> [extension]
rg() {
    if [ -z "$2" ]
    then
        myExt='php'
    else
        myExt="$2"
    fi
    find . -name "*.$myExt" -exec grep -In "$1" "{}" \; -print
}

checkphp() {
        find . -name \*.php -exec php -l "{}" \;
        find . -name \*.ctp -exec php -l "{}" \;
        find . -name \*.phtml -exec php -l "{}" \;
        find . -name \*.js -exec php -l "{}" \;
}
