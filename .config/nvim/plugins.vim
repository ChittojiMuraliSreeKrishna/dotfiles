" plugs { https://vimawesome.com/ }
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
highlight ColorScheme guibg=dark ctermbg=0
