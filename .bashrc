# Add local scripts to paths
export PATH=$PATH:/home/david/bin/
export EDITOR=vim

# Alias definitions.
alias ls='ls -lhX --color=auto'
alias rm='rm -r -i'
alias cp='cp -i'
alias mv='mv -i'
alias cd='cs'
alias aospace='ssh aospace.com -p 1376'
alias aosyborg='ssh aosyborg.com -p 1376'

# Custom functions
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

# Custom change directory
cs() {
	if [ -d $1 ]
	then
		\cd $1
	else
		\cd $(dirname $1)
	fi
	ls
}
