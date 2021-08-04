" --Keymaps --
"  leader-Key
let mapleader = " "

" Movements
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>l :wincmd l<CR>

" Tab-Movement
nnoremap <silent><TAB> :tabn<CR>
nnoremap <silent><S-TAB> :tabp<CR>

" Resize-Tabs
nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>

" New-Tab
nnoremap <silent><C-t> :tabnew<CR>

" Quit-All
nnoremap <silent><leader>q :xa<CR>

" Nerd-Tree
nnoremap <C-b> :NERDTreeToggle<CR>

" Files Search
nnoremap <C-p> :Files<CR>

" Add-Semicolumn
nnoremap <silent><leader>; g_a;<Esc>

" Open-Terminal
nnoremap <silent><C-n> :call OpenTerminal()<CR>

