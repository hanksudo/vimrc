#!/bin/sh
set -e

cp -f ~/.vim/vimrc $HOME/.vimrc
git submodule update --init
