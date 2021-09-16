" Prev Buffer
nnoremap <leader>b :b#<CR>

" Movements
nnoremap <silent><leader><Up> :wincmd k<CR>
nnoremap <silent><leader><Down> :wincmd j<CR>
nnoremap <silent><leader><Left> :wincmd h<CR>
nnoremap <silent><leader><Right> :wincmd l<CR>

" Tab-Movement
nnoremap <silent><C-Right> :tabn<CR>
nnoremap <silent><C-Left> :tabp<CR>

" Resize-Tabs
nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>

" New-Tab
nnoremap <silent><C-t> :tabnew<CR>

" Quit-All
nnoremap <silent><leader>q :xa<CR>

" Save File
nnoremap <leader>w :w<CR>

" Add-Semicolumn, Comma at the end
nnoremap <silent><leader>; g_a;<Esc>
nnoremap <silent><leader>, g_a,<Esc>

" Open A File in browser
nnoremap <silent><leader>o :!xdg-open %<CR>
