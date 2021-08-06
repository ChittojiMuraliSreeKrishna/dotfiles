" ColorScheme
set background=light
colorscheme gruvbox
let g:gruvbox_italic = 1
let g:gruvbox_undercurl = 0
highlight ColorColumn guibg=#458588 ctermbg=0

" Airline
set noshowmode
set nomodeline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1

" Syntax folding in javaScript
let javascript_fold=1

" NerdTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
