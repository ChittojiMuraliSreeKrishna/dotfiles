" General Preferences
autocmd!
set autoread
set ttyfast

" Appearance
set t_co=256
set termguicolors
set winbl=10
set colorcolumn=80,100

" Syntax
syntax on
filetype on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set termencoding=utf-8
scriptencoding utf-8

" Spell-Check
set spell
set spelllang=en_us

" Line-Numbers
set number
set relativenumber
set ruler

" Searching
set nohlsearch
set ignorecase
set incsearch
set smartcase
set showmatch
set nolazyredraw

" Error-Bells
set noerrorbells
set visualbell

" Tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
set shiftround

" Wrapping
set nowrap
set wrapmargin=8
set linebreak
set showbreak=...
autocmd BufRead,BufNewFile *.md,*.txt setlocal wrap

" Swap-Files
set noswapfile
set undofile
set nobackup
set undodir=$HOME/.config/nvim/undodir

" Mouse
set mouse=a
set guicursor=
set cursorline

" Clipboard
set clipboard=unnamed,unnamedplus

" Splits
set splitright splitbelow

" List
set list
set listchars=tab:\|\

" Backspace
set backspace=indent,eol,start

" Braces
set showmatch
set mat=2

" History
set history=1000

" Comments
set formatoptions+=r

" Statusline
set laststatus=2
set showtabline=2

" Fold Methods
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Other-Options
set signcolumn=yes
set colorcolumn=+1
set nostartofline
set scrolljump=5
set textwidth=80
set sidescroll=1
set scrolloff=8
set nolangremap
set wildmenu
set showcmd
set title
set magic

" Coc
set updatetime=300
set shortmess+=c
