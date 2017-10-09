runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

filetype plugin on
filetype indent on

set autoindent
set autoread
set autowrite
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
set so=7
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
highlight Normal ctermbg=none


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

" === Plugin config
let g:vim_json_syntax_conceal = 0

" NERDComment
let g:NERDSpaceDelims = 1

" NERDTreeToggle
let NERDTreeShowHidden = 1

" keyboard shortcuts
let mapleader = ","
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>w :w!<CR>
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

" vim-go
let g:go_fmt_command = "goimports"
map <C-n> :cnext<CR>
map <c-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)


" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

