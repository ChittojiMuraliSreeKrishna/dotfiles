" colorscheme
colorscheme gruvbox
highlight colorscheme guibg=dark ctermbg=0

" lightline
let g:lightline#bufferline#clickable=1
let g:lightline#bufferline#shorten_path=1
let g:lightline#bufferline#min_buffer_count=1

" nerdtree
autocmd FileType nerdtree setlocal nolist
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Plugs Config
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_new_caching = 0

" Indent Line
let g:indentLine_char = '| '
let g:indentLine_color_gui = '#83a598'
