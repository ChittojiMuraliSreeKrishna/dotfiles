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
" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

" Emmet
Plug 'mattn/emmet-vim'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

"--------------------------------------------------------------------
"                           Auto Complete
"--------------------------------------------------------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}

