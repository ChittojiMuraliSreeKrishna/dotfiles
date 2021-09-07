let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let g:NERDTreeStatusline = '%#NonText#'
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Fzf
nnoremap <silent><C-f> :Files<CR>
nnoremap <silent><leader>r :Rg<CR>
nnoremap <silent><leader>b :Buffer<CR>
nnoremap <silent><leader>h :History<CR>
