" ColorScheme
set background=light
colorscheme gruvbox
highlight ColorColumn guibg=dark ctermbg=lightGrey

" Lightline
let g:lightline#bufferline#clickable=1
let g:lightline#bufferline#shorten_path=1
let g:lightline#bufferline#min_buffer_count=1

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


