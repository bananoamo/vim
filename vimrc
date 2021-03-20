filetype plugin indent on
set tabstop=4
set encoding=utf-8
set nocompatible
syntax enable

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'drewtempelmeyer/palenight.vim'
Plug 'pbondoer/vim-42header'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

let g:lightline = { 'colorscheme': 'palenight'}
let g:airline_theme = "palenight"
set background=dark
colorscheme palenight

set number relativenumber
set cursorline
set guifont="Fira Code"

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map  <C-N> :NERDTree<CR>

set textwidth=80
set wrapmargin=0
set formatoptions+=t
set wrap
set linebreak
set columns=80
