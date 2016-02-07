# vimrc

My vim configuration

## Installation

Use curl (for OSX)
```bash
curl -L https://raw.github.com/hanksudo/vimrc/master/install.sh | sh
```

or wget (for most UNIX platforms):
```bash
wget -O - https://raw.github.com/hanksudo/vimrc/master/install.sh | sh
```

## Plugins

- [itchyny/lightline.vim: A light and configurable statusline/tabline for Vim](https://github.com/itchyny/lightline.vim)
- [Valloric/YouCompleteMe: A code-completion engine for Vim](https://github.com/Valloric/YouCompleteMe)
- [elzr/vim-json: A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.](https://github.com/elzr/vim-json)
- [morhetz/gruvbox: Retro groove color scheme for Vim](https://github.com/morhetz/gruvbox)
- [ctrlpvim/ctrlp.vim: Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.](https://github.com/ctrlpvim/ctrlp.vim)
- [scrooloose/nerdtree: A tree explorer plugin for vim.](https://github.com/scrooloose/nerdtree)
- [scrooloose/nerdcommenter: Vim plugin for intensely orgasmic commenting](https://github.com/scrooloose/nerdcommenter)

## Compile YouCompleteMe

```bash
cd bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
```

## Scripts

### vim highlight support for nginx

```bash
mkdir -p ~/.vim/syntax/
cd ~/.vim/syntax/
wget -O - http://www.vim.org/scripts/download_script.php?src_id=19394 > nginx.vim
cat > ~/.vim/filetype.vim <<EOF
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == ‘’ | setfiletype nginx | endif
EOF
``` 
