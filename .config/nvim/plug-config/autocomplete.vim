let g:coc_global_extensions = [
      \ 'coc-css',
      \ 'coc-flow',
      \ 'coc-html',
      \ 'coc-json',
      \ 'coc-emmet',
      \ 'coc-eslint',
      \ 'coc-python',
      \ 'coc-tsserver',
      \ 'coc-prettier',
      \ ]

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Highlight
highlight Pmenu guifg=#282828 guibg=#fbf1c7

