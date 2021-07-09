"---General Preferences---
autocmd!
" Syntax
syntax on
filetype plugin on
set encoding=utf-8
scriptencoding utf-8

" Line-numbers
set number
set relativenumber

" Spellings
set spell
set spelllang=en_us

" Searching
set nohlsearch
set ignorecase
set incsearch
set smartcase
set nolazyredraw

" Bells
set noerrorbells
set visualbell

" Cursor & Mouse
set mouse=a
set guicursor=
set cursorline

" Tabs & Spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
set smartindent
set shiftround

" Backup
set undofile
set nobackup
set noswapfile
set nowritebackup
set undodir=$HOME/.config/nvim/undodir

" Wrapping
set wrap
set wrapmargin=8
set linebreak
set showbreak=...

" Backspace
set backspace=indent,eol,start

" Clipboard
set clipboard=unnamed

" Braces
set showmatch
set mat=2

" History
set t_co=256
set history=1000

" Appearances
set background=dark
set termguicolors

" Other options
set title
set magic
set wildmenu
set showcmd
set scrolloff=8
set scrolljump=5
set textwidth=80
set signcolumn=yes
set sidescroll=1
set laststatus=2
set showtabline=2
set foldmethod=syntax

" Comments
set formatoptions+=r
