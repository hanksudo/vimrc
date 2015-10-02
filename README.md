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