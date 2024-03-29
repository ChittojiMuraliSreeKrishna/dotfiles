" init autocmd
autocmd!

" Colouring
set t_co=256
set winbl=10

" ColorColumn
set colorcolumn=80,100
set colorcolumn=+1

" Cursor
set guicursor=
set cursorline
set nocursorcolumn

" Line Numbers
set ruler
set number
set relativenumber

" Braces
set showmatch
set mat=2

" Status Line
set laststatus=2
set showtabline=2

" Sign Column
set signcolumn=yes

"--------------------------------------------------------------------
"                         Preferences
"--------------------------------------------------------------------
autocmd!
set title
set magic
set ttyfast
set showcmd
set autoread
set wildmenu

" Encoding
set encoding=utf-8
scriptencoding=utf-8
set fileencoding=utf-8

" Spellings
set spell
set nolangremap
set spelllang=en_us

" syntax
syntax enable
filetype plugin indent on

" Swapfiles
set noswapfile
set undofile
set nobackup
set undodir=$HOME/.vim/undodir

" Errors
set visualbell
set noerrorbells

" Mouse
set mouse=a

" Others
set hidden
set autoread

" Backspace
set backspace=indent
set backspace+=eol
set backspace+=start

" Searching
set gdefault
set smartcase
set incsearch
set nohlsearch
set ignorecase
set nolazyredraw

" Folding
set foldenable
set foldnestmax=10
set foldmethod=indent
set foldlevelstart=10

" Wrapping
set nowrap
set linebreak
set wrapmargin=8
set showbreak=...
autocmd BufRead, BufNewFile *.md, *.txt setlocal wrap

" Scroll Off
set scrolloff=8
set sidescroll=1
set scrolljump=5

" Clipboard
set clipboard=unnamed,unnamedplus

" History
set history=1000

" Comments
set formatoptions+=r

" List
set list
set listchars=tab:\|\

" Path || Ignore
set path+=**
set wildignore+=*/node_modules/*,*/.zip/*,*/.swp/*,*/tmp/*

