set splitright
set splitbelow

" turn terminal to normal mode
tnoremap <Esc> <C-\><C-n>

" Start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" Terminal Function
function! OpenTerminal()
  split term://bash
  resize 10
endfunction

" Open Terminal
nnoremap <silent><C-t> :call OpenTerminal()<CR>
