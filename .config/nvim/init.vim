" Syntax and file Types
syntax on
filetype plugin on

" Spellings
set spell
set spelllang=en_us

" Encoding
set termencoding=utf-8
set encoding=utf-8

" Cursor
set guicursor=

" Scrolling
set scrolloff=8

" History
set history=1000
set showcmd

" Setting Mouse
set mouse=a

" Ignore Case & Searching
set ignorecase
set smartcase
set incsearch
set nohlsearch

" Line numbers
set number
set relativenumber

" Sign Column
set signcolumn=yes

" Indentation
set autoindent
set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set modeline
set textwidth=99
set copyindent

" Error bells
set noerrorbells
set visualbell

" Undo file & Undo directory
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Ruler
set ruler

" Mode
set showmode

" Title
set title

" Fold Method
set foldmethod=indent
set foldlevelstart=99

" Setting CursorLine
set cursorline

" ColumnWrap
set colorcolumn=90

" Status Line
set laststatus=2
set cmdheight=1

" Set Clipboard
set clipboard=unnamed

" Inccommand
set inccommand=nosplit

" Wrapping
set wrap
set breakindent

" Supports 256 colors
set t_Co=256

" ############################
" Extra Options
" ############################
" Chars
set fillchars+=vert:\

" White Spaces
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

" Nvim Colors
if has('termguicolors')
    set termguicolors
endif

" ############################
" PLUGINS
" ############################
" plugs { https://vimawesome.com/ }
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'gregsexton/matchtag'
Plug 'jiangmiao/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'kien/rainbow_parentheses.vim'
Plug 'prettier/prettier'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" Languages Support
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'othree/html5.vim'
Plug 'plasticboy/vim-markdown'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'justinj/vim-react-snippets'

" Extra Plugs
Plug 'mbbill/undotree'
Plug 'kien/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
call plug#end()

" Setting Color Scheme
colorscheme gruvbox
highlight ColorScheme guibg=dark ctermbg=0

" let buffers be clickable
let g:lightline#bufferline#clickable=1
let g:lightline#bufferline#shorten_path=1
let g:lightline#bufferline#min_buffer_count=1

" Nerd tree
autocmd FileType nerdtree setlocal nolist
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Plugs Config
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_new_caching = 0

" Functions()
" To Open Terminal
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://fish
  resize 10
endfunction

" Indent Line
let g:indentLine_char = '| '
let g:indentLine_color_gui = '#83a598'

" ############################
" KEYBINDINGS
" ############################
let mapleader =" "

" Switch Between Splits
nnoremap <silent><leader><Left> :wincmd h<CR>
nnoremap <silent><leader><Right> :wincmd l<CR>
nnoremap <silent><leader><Down> :wincmd j<CR>
nnoremap <silent><leader><Up> :wincmd k<CR>

" Switch Between Tabs
nnoremap <silent><S-TAB> :tabp<CR>
nnoremap <silent><TAB> :tabn<CR>

" Resize Splits
nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>

" New tab
nnoremap <silent><C-t> :tabnew <CR>

" Open Terminal
map <silent><c-n> :call OpenTerminal()<CR>

" Nerd Tree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Add semicolumn at the end of the line
nnoremap <Leader>; g_a;<Esc>

