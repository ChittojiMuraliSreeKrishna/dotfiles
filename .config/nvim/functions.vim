" cahars
set fillchars+=vert:\

" whitespaces
if &encoding == 'utf-8'
	set list listchars=trail:»,tab:»-
endif

" Nvim Colors
if has('termguicolors')
    set termguicolors
endif

" To Open Terminal
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://fish
  resize 10
endfunction
