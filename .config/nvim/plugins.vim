call plug#begin('~/.config/nvim/plugged')
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
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" Languages Support
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'othree/html5.vim'
Plug 'tpope/vim-markdown'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'justinj/vim-react-snippets'

" Extra Plugs
Plug 'mbbill/undotree'
Plug 'junegunn/goyo.vim'
Plug 'kien/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-surround'

call plug#end()
