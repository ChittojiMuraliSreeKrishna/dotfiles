let mapleader=" "

" Custom Keys
nnoremap <silent><leader><Left> :wincmd h<CR>
nnoremap <silent><leader><Right> :wincmd l<CR>
nnoremap <silent><leader><Down> :wincmd j<CR>
nnoremap <silent><leader><Up> :wincmd k<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>s :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <leader>[ :tabp<CR>
nnoremap <leader>] :tabn<CR>
nnoremap <C-t> :tabnew <CR>
nnoremap <c-n> :call OpenTerminal()<CR>
