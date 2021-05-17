set nocompatible
filetype off

"vim-plug section
call plug#begin('~/.vim/plugged')

Plug 'ervandew/SuperTab'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'nanotech/jellybeans.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()

filetype plugin indent on

set t_Co=256
set shell=/bin/bash
syntax on

colorscheme jellybeans
set guifont=Inconsolata\ for\ Powerline:h14
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline_theme = 'jellybeans'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

set tags=./tags,tags
set nocompatible
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set ruler
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set nu
set relativenumber
set cursorline
set foldmethod=indent

let mapleader = ","

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <silent><leader><space> :noh<CR>

set wrap
set textwidth=121
set formatoptions=qrn1
set colorcolumn=121

" go configs
let g:go_fmt_command = "goimports" " Run goimports along gofmt on each save
let g:go_auto_type_info = 1 " Automatically get signature/type info for object under cursor
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
" navigate errors
set autowrite " save file on go build
map <C-n> :cnext<CR>
map <C-p> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" js configs
autocmd FileType javascript setlocal sw=2 ts=2 tw=2
autocmd FileType css setlocal sw=2 ts=2 tw=2

" nerdtree options
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>nm :NERDTreeMirror<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" lsp
" set foldmethod=expr
"   \ foldexpr=lsp#ui#vim#folding#foldexpr()
"   \ foldtext=lsp#ui#vim#folding#foldtext()
