"--------------------------------------------------------------------
"                           Editor Settings
"--------------------------------------------------------------------
Plug 'kien/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'

"--------------------------------------------------------------------
"                           Files/File Tree
"--------------------------------------------------------------------
" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File Tree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

"--------------------------------------------------------------------
"                           Languages
"--------------------------------------------------------------------
" HTML
Plug 'alvan/vim-closetag'


" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

" Emmet
Plug 'mattn/emmet-vim'
Plug 'emmetio/emmet'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'maxmellon/vim-jsx-pretty'

" Python
Plug 'davidhalter/jedi-vim'

"--------------------------------------------------------------------
"                           Auto Complete
"--------------------------------------------------------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}

