let mapleader =" "

" movements
nnoremap <silent><leader><Left> :wincmd h<CR>
nnoremap <silent><leader><Right> :wincmd l<CR>
nnoremap <silent><leader><Up> :wincmd k<CR>
nnoremap <silent><leader><Down> :wincmd j<CR>

" switch between tabs
nnoremap <silent><TAB> :tabn<CR>
nnoremap <silent><S-TAB> :tabp<CR>

" resize splits
nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>

" new tab
nnoremap <silent><C-t> :tabnew<CR>

" open terminal
nnoremap <silent><C-n> :call OpenTerminal()<CR>

" nerdtree
nnoremap <silent><C-b> :NERDTreeToggle<CR>

" add semicolumn
nnoremap <silent><leader>; g_a;<Esc>

" quit all
nnoremap <silent><leader>q :xa<CR>
