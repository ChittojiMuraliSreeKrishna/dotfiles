let mapleader =" "

" Switch Between Splits
nnoremap <silent><leader><Left> :wincmd h<CR>
nnoremap <silent><leader><Right> :wincmd l<CR>
nnoremap <silent><leader><Down> :wincmd j<CR>
nnoremap <silent><leader><Up> :wincmd k<CR>

" Switch Between Tabs
nnoremap <silent><S-TAB> :tabp<CR>
nnoremap <silent><TAB> :tabn<CR>

" Resize Splits
nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>

" New tab
nnoremap <silent><C-t> :tabnew <CR>

" Open Terminal
map <silent><c-n> :call OpenTerminal()<CR>

" Nerd Tree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Add semicolumn at the end of the line
nnoremap <Leader>; g_a;<Esc>












