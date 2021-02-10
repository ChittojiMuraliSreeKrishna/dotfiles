syntax on

set title
set noerrorbells
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'preservim/NERDTree'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'lepture/vim-css'
Plug 'hdima/python-syntax'
Plug 'gregsexton/matchtag'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/prettier'
Plug 'yggdroot/indentline'
Plug 'kien/rainbow_parentheses.vim'

call plug#end()

colorscheme gruvbox
set background=dark
set showtabline=2
set laststatus=2
let mapleader =" "
