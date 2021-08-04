" Chars
set fillchars+=vert:\

" Whitesoaces
if &encoding == 'utf-8'
    set list listchars=trail:»,tab:»-
endif

" Open-Terminal
set splitright
set splitbelow
" turn terminal to normal mode
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
    split term://bash
    resize 10
endfunction
