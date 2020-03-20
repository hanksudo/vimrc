# vimrc

My vim configuration

## Installation

```bash
git clone --depth=1 https://github.com/hanksudo/vimrc.git ~/.vim
sh ~/.vim/install.sh
```

## Plugins

- [itchyny/lightline.vim: A light and configurable statusline/tabline for Vim](https://github.com/itchyny/lightline.vim)
- [elzr/vim-json: A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.](https://github.com/elzr/vim-json)
- [morhetz/gruvbox: Retro groove color scheme for Vim](https://github.com/morhetz/gruvbox)
- [ctrlpvim/ctrlp.vim: Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.](https://github.com/ctrlpvim/ctrlp.vim)
- [scrooloose/nerdtree: A tree explorer plugin for vim.](https://github.com/scrooloose/nerdtree)
- [scrooloose/nerdcommenter: Vim plugin for intensely orgasmic commenting](https://github.com/scrooloose/nerdcommenter)
- [GitHub - ntpeters/vim-better-whitespace: Better whitespace highlighting for Vim](https://github.com/ntpeters/vim-better-whitespace)
- [GitHub - rust-lang/rust.vim: Vim configuration for Rust.](https://github.com/rust-lang/rust.vim)

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
