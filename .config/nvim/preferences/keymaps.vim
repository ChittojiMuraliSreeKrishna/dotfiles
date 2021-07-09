"---Keymaps Settings---
" Leader Key
let mapleader = " "

" Movements
nnoremap <silent><leader><Up> :wincmd k<CR>
nnoremap <silent><leader><Down> :wincmd j<CR>
nnoremap <silent><leader><Left> :wincmd h<CR>
nnoremap <silent><leader><Right> :wincmd l<CR>

" Tabs switching
nnoremap <silent><TAB> :tabn<CR>
nnoremap <silent><S-TAB> :tabn<CR>

" Resize Tabs
nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>

" New Tab
nnoremap <silent><C-t> :tabnew<CR>

" Quit All
nnoremap <silent><leader>q :xa<CR>

" Nerdtree
nnoremap <silent><C-b> :NERDTreeToggle<CR>

" Add Semicolumn
nnoremap <silent><leader>; g_a;<Esc>


" Open Terminal
nnoremap <silent><C-n> :call OpenTerminal()<CR>

