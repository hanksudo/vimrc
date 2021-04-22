#!/bin/sh
set -e

if [ -d "$HOME/.vimrc" ]; then
    echo "=> dotfiles is already installed in $HOME/.vimrc, trying to update"
    echo "=> "
    cd "$HOME"/.vimrc && git pull
else
    echo "=> clone dotfiles from Github..."
    git clone https://github.com/hanksudo/vimrc.git "$HOME"/.vimrc
    cd "$HOME"/.vimrc || exit
fi
echo ""

cd "$HOME"/.vimrc && git submodule update --init
