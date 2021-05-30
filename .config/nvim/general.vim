" Spells
set spell
set spelllang=en_us

" Cursor
set guicursor=

" Scrolloff
set scrolloff=8

" History
set history=1000

" Mouse in all modes
set mouse=a

" IgnoreCase & Searching
set ignorecase
set smartcase
set incsearch
set nohlsearch

" Set LineNumbers
set number
set relativenumber

" Fold Method
set foldmethod=indent
set foldlevelstart=99

" Background
set background=dark

" Setting CursorLine
set cursorline

" ColumnWrap
set colorcolumn=90

" SignColumn
set signcolumn=yes

" Set Clipboard
set clipboard=unnamed

" Indentation
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=99
set modeline

" Inccommand
set inccommand=nosplit

" Errorbells
set noerrorbells
set visualbell

" UndoFile & UndoDir
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Ruler Mode
set ruler
set showcmd
set showmode

" Chars
set fillchars+=vert:\

" Wrapping
set wrap
set breakindent

" Title
set title

" Popup Menu
set pumheight=7

" Space For Displaying Messages
set cmdheight=1

" Supports 256 colors
set t_Co=256

" Conceal Level for Markdown Files
set conceallevel=0

" Always Display the Status Line
set laststatus=2

" Show Tabline
set showtabline=2

" Coloring
highlight comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Show Whitespaces
if &encoding == 'utf-8'
    set list listchars=trail:»,tab:»-
endif

" omniCompletion
augroup markdown
	au!
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup END

" Checking For syntax
if has('syntax')
    syntax on
endif
" Checking Filetypes
filetype on
if has('autocmd')
    filetype indent on
endif

" Nvim Colors
if has('termguicolors')
    set termguicolors
endif

