# set up vim for plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl 'www.vim.org/scripts/download_script.php?src_id=19375' > ~/.vim/autoload/pathogen.vim

VIM_DIR=~/.vim/bundle/
git clone https://github.com/bling/vim-airline $VIM_DIR # fancy toolbar
git clone https://github.com/tpope/vim-surround $VIM_DIR # surrounding text options
git clone https://github.com/tomtom/tcomment_vim $VIM_DIR # comments
git clone https://github.com/scrooloose/nerdtree $VIM_DIR # file tree
git clone https://github.com/tpope/vim-fugitive $VIM_DIR # git
git clone https://github.com/ervandew/supertab $VIM_DIR # tab completion
git clone https://github.com/kien/ctrlp.vim $VIM_DIR # Sublime-style open anything

# JS
git clone https://github.com/Shutnik/jshint2.vim $VIM_DIR # js hint
git clone https://github.com/heavenshell/vim-jsdoc $VIM_DIR # doc blocks

# syntax and color schemes
git clone https://github.com/kchmck/vim-coffee-script.git $VIM_DIR # coffee-script
git clone https://github.com/digitaltoad/vim-jade $VIM_DIR # jade
git clone https://github.com/nanotech/jellybeans.vim $VIM_DIR # current colorscheme
git clone https://github.com/elzr/vim-json $VIM_DIR # JSON

VIMRC="call pathogen#infect()
syntax on
filetype plugin indent on

set nu ruler tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab modeline ls=2 fdm=indent
au Filetype haskell set expandtab 
au BufNewFile,BufRead *.cljs setlocal ft=cl
autocmd BufWritePre *.js, *.hs, *.cl, *.cljs :%s/\s\+$//e \" strip trailing whitespace from js files
colorscheme jellybeans

let jshint2_save = 1 \" run jshint on save
let jsdoc_allow_input_prompt = 1 \" interactive prompt w/JsDoc comments
let jsdoc_input_description = 1 \" prompt for function description

\" enable powerline symbols
let g:airline_powerline_fonts = 1"

echo "$VIMRC" >> test_vimrc
