#! /bin/bash

PATH="$( cd -P "$( dirname "$0" )" && pwd )"

/bin/ln -nfs $PATH/vim ~/.vim
/bin/ln -nfs $PATH/vimrc ~/.vimrc
/bin/ln -nfs $PATH/screenrc ~/.screenrc
/bin/ln -nfs $PATH/tmux.conf ~/.tmux.conf
/bin/ln -nfs $PATH/bashrc ~/.bashrc
/bin/ln -nfs $PATH/gitconfig ~/.gitconfig
