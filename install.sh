#!/bin/sh

if [ -d "$HOME/.vim" ]; then
    echo "$HOME/.vim is already exists, please backup or remove it then try again."
    exit
else
    echo "=> clone dotfiles from Github..."
    git clone https://github.com/hanksudo/vimrc.git $HOME/.vim
    mkdir -p $HOME/.vim/bundle
    cd $HOME/.vim
    git submodule update --init
fi
echo "\r"

cp vimrc $HOME/.vimrc
