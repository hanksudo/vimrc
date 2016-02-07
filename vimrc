runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible
filetype off
filetype plugin indent on

set autoindent
set autoread
set backspace=indent,eol,start  " Backspace deletes like most programs in insert mode
set cursorline
set encoding=utf-8
set expandtab                   " expand tabs to spaces
set ignorecase
set smartcase
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create backup files
set number
set ruler
set showcmd                     " display incomplete commands
set showmode
set showmatch
set softtabstop=4
set shiftwidth=4
set splitright
set splitbelow
set ts=4                        " set tabs to have 4 spaces
set hidden
set laststatus=2                " Always display the status line
set list                        " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set wildmenu
set wildmode=longest,list,full
set hlsearch
set wildignore+=*.pyc,.DS_Store,*min.js,*.map,*.log,node_modules
set wildignore+=*.swp,*.zip,*.so,*/tmp/*,*/\.git/*,*/vendor/*

syntax enable
set t_Co=256
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

highlight Search ctermfg=Black ctermbg=Yellow guifg=Black guibg=Yellow
highlight Pmenu ctermbg=238 gui=bold

" ctrlp config
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0

" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on

" keyboard shortcuts
let mapleader = ","
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>q :q<CR>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <CR> G
nnoremap <BS> gg
nnoremap <Leader>n :tabnew<CR>
nnoremap <Leader>c :tabclose<CR>
map <C-k> :tabp<CR>
map <C-j> :tabn<CR>
" map <Leader> <Plug>(easymotion-prefix)
nmap <kEnter> <Enter>


vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

