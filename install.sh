#!/bin/sh
set -e

if [ -d "$HOME/.vim" ]; then
    echo "=> vimrc is already installed in $HOME/.vim, trying to update"
    echo "=> "
    cd "$HOME"/.vim && git pull
else
    echo "=> clone vimrc from Github..."
    git clone https://github.com/hanksudo/vimrc.git "$HOME"/.vim
    cd "$HOME"/.vim || exit
fi
echo ""

cd "$HOME"/.vim && git submodule update --init
cp vimrc "$HOME"/.vimrc