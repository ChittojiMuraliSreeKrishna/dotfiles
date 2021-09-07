let g:coc_global_extensions = [
      \ 'coc-css',
      \ 'coc-json',
      \ 'coc-eslint',
      \ 'coc-tsserver',
      \ 'coc-prettier',
      \ ]

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Highlight
highlight Pmenu guifg=#fbf1c7 guibg=#282828

