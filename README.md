# vimrc

My vim configuration

## Installation

```bash
curl -L https://raw.github.com/hanksudo/vimrc/master/install.sh | sh
```

## Plugins

- [tpope/vim-pathogen: pathogen.vim: manage your runtimepath](https://github.com/tpope/vim-pathogen)
- [preservim/nerdtree: A tree explorer plugin for vim.](https://github.com/preservim/nerdtree)
- [easymotion/vim-easymotion: Vim motions on speed!](https://github.com/easymotion/vim-easymotion)
- [itchyny/lightline.vim: A light and configurable statusline/tabline for Vim](https://github.com/itchyny/lightline.vim)
- [terryma/vim-expand-region: Vim plugin that allows you to visually select increasingly larger regions of text using the same key combination.](https://github.com/terryma/vim-expand-region)
- [morhetz/gruvbox: Retro groove color scheme for Vim](https://github.com/morhetz/gruvbox)
- [ctrlpvim/ctrlp.vim: Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.](https://github.com/ctrlpvim/ctrlp.vim)
- [tpope/vim-surround: surround.vim: quoting/parenthesizing made simple](https://github.com/tpope/vim-surround)
- [airblade/vim-gitgutter: A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks.](https://github.com/airblade/vim-gitgutter)
- [scrooloose/nerdtree: A tree explorer plugin for vim.](https://github.com/scrooloose/nerdtree)
- [scrooloose/nerdcommenter: Vim plugin for intensely orgasmic commenting](https://github.com/scrooloose/nerdcommenter)
- [fatih/vim-go: Go development plugin for Vim](https://github.com/fatih/vim-go)
- [rust-lang/rust.vim: Vim configuration for Rust.](https://github.com/rust-lang/rust.vim)
- [elzr/vim-json: A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.](https://github.com/elzr/vim-json)

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
