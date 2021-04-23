syntax on
filetype plugin on
set encoding=UTF-8

" tabs spaces
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set shiftround

" Searching
set nohlsearch
set smartcase
set ignorecase
set nolazyredraw
set incsearch

" errorbells
set noerrorbells
set visualbell

" undofiles/undodir
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" general styling
set number relativenumber
set numberwidth=1
set spell
set title
set mouse=a
set guicursor=
set nowrap
set termguicolors
set scrolloff=8
set noshowmode
set nocompatible
set colorcolumn=80
set signcolumn=yes

" plugs
call plug#begin('~/.vim/plugged')

" Appearance
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
Plug 'lyuts/vim-rtags'

call plug#end()

" ColorScheme
colorscheme gruvbox
set background=dark
set cursorline
set hidden
set list
set showtabline=2
set laststatus=2
set cmdheight=1
highlight normal guibg=dark ctermbg=0

" let buffers be clickable
let g:lightline#bufferline#clickable=1
let g:lightline#bfferline#shorten_path=1
let g:lightline#bufferline#min_buffer_count=1

" Nerd tree
autocmd FileType nerdtree setlocal nolist
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

" Keys/and combinations
let mapleader = " "

" Plugs Config
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_new_caching = 0

" nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Custom Keys
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>s :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <leader>[ :tabp<CR>
nnoremap <leader>] :tabn<CR>
nnoremap <C-t> :tabnew <CR>

" terminal options
" open new split panes to right and below
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
nnoremap <c-n> :call OpenTerminal()<CR>
