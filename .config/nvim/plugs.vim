"---------------------------------------------------------------------"
"                           Editor
"---------------------------------------------------------------------"
" Color-Scheme
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'

" File-Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Nerd-Tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'mattn/emmet-vim'

" Appearance
Plug 'kien/rainbow_parentheses.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sensible'

"---------------------------------------------------------------------"
"                           Language Support
"---------------------------------------------------------------------"
" HTML
Plug 'gregsexton/MatchTag'
Plug 'alvan/vim-closetag'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'

" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

" JavaScript
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' }
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'HerringtonDarkholme/yats.vim', { 'for': ['typescript', 'typescript.tsx'] }
Plug 'purescript-contrib/purescript-vim', { 'for': 'purescript' }

" Python
Plug 'vim-python/python-syntax'
Plug 'hdima/python-syntax'

"---------------------------------------------------------------------"
"                           Auto-Complete
"---------------------------------------------------------------------"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 
                              \'coc-css', 
                              \'coc-html', 
                              \'coc-json', 
                              \'coc-prettier', 
                              \'coc-tsserver', 
                              \'coc-python']
