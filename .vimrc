set nocompatible            " Don't make Vim vi-compatible.
" ---------------------------------------------------------------------------- "
" Plug                                                                         "
" ---------------------------------------------------------------------------- "
" install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd vimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/bundle')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-zsh' }
Plug 'junegunn/fzf.vim'
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
Plug 'mxw/vim-jsx'
Plug 'kien/ctrlp.vim'
Plug 'valloric/youcompleteme'
Plug 'justinj/vim-react-snippets'
Plug 'kien/rainbow_parentheses.vim'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mhinz/vim-signify'
" style
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'ayu-theme/ayu-vim'

call plug#end()


" ---------------------------------------------------------------------------- "
" General Settings                                                             "
" ---------------------------------------------------------------------------- "

syntax on
filetype plugin indent on
set title
set autoread
set noerrorbells
set relativenumber
set nohlsearch
set wildmenu
set ttyfast
set hidden
set binary
set noerrorbells
set noshowmode
set showmatch
set nowrap

 " Use the system clipboard
set clipboard=unnamed
if has("unnamedplus")
  set clipboard+=unnamedplus
endif

if has('mouse')
  set mouse=a
  set mousehide
endif

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set smartcase
set history=200
set tabstop=4 softtabstop=4
set ttymouse=xterm2
set shiftwidth=4
set expandtab
set matchtime=2
set scrolloff=8
set smartindent
set nu
set incsearch
set signcolumn=yes

set showcmd
set lazyredraw
set synmaxcol=2500
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


colorscheme gruvbox
set background=dark
set showtabline=2
set laststatus=2
set encoding=utf-8
let mapleader =" "
if executable('rg')
    let g:rg_derive_root='true'
endif

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Persistent undo
" Create undo dir if not exists
if empty(glob('~/.vim/undo'))
  silent !mkdir ~/.vim/undo
else
  set undofile
  set undodir=$HOME/.vim/undo
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_new_caching = 0
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
" youcompleteme
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
