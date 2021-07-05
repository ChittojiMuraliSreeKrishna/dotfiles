" General
set title
set ruler
set emoji
set hidden
set nowrap
set nolist
set autoread
set showmode
set wildmenu
set noshowcmd
set linebreak
set lazyredraw
set nocompatible
set termguicolors
filetype plugin on

" Options
set re=1
set tw=90
set t_Co=256
set path+=**
set cmdheight=1
set pumheight=10
set scrolljump=5
set history=1000
set textwidth=80
set sidescroll=1
set laststatus=2
set iskeyword+=-
set showtabline=2
set synmaxcol=1000
set signcolumn=yes
set conceallevel=0
set encoding=utf-8
set sidescrolloff=8
set background=dark
set foldmethod=syntax
set foldlevelstart=90
set fileencoding=utf-8
set clipboard+=unnamedplus
set mousemodel=popup_setpos
set breakindentopt=sbr,shift:4
set backspace=indent,eol,start

" Leader key
let mapleader = " "

" Spellings
set spell
set spelllang=en_us

" Syntax
syntax on
filetype plugin on

" Cursor
set mouse=a
set mouse=nicr
set guicursor=
set cursorline

" Searching
set nohlsearch
set ignorecase
set incsearch
set smartcase

" Bells
set noerrorbells
set visualbell
set belloff=esc

" Line-numbers
set number
set relativenumber

" Tab & Spacing
set smarttab
set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Backup
set undofile
set nobackup
set noswapfile
set nowritebackup
set undodir=~/.vim/undodir
