" install vim-plug if necessary
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" https://vimawesome.com/
call plug#begin('$HOME/.config/nvim/plugged')
"##########################################
"#              GENERAL PLUGS             #
"##########################################
" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'

" Nerd-Tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" File-Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Others
Plug 'kien/rainbow_parentheses.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sensible'
Plug 'prettier/prettier'

"##########################################
"#              LANGUAGE PLUGS            #
"##########################################

" HTML
Plug 'gregsexton/MatchTag'
Plug 'alvan/vim-closetag'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'

" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

" javaScript
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'justinj/vim-react-snippets'
Plug 'mxw/vim-jsx'

"##########################################
"#              AUTO COMPLETE             #
"##########################################

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 
                              \'coc-css', 
                              \'coc-html', 
                              \'coc-json', 
                              \'coc-prettier', 
                              \'coc-tsserver', 
                              \'coc-python']

call plug#end()

