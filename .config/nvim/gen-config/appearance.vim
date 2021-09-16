"--------------------------------------------------------------------
"                           ColorScheme
"--------------------------------------------------------------------
" Color Column
highlight ColorColumn cterm=NONE guibg=#3c3836

" Cursor Line
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=#3c3836
highlight CursorLine guibg=#3c3836

" Line Numbers
highlight LineNr cterm=NONE ctermfg=240 guifg=#a89984 guibg=#1d2021 gui=bold

" Signcolumn
highlight SignColumn guibg=#3c3836

" White spaces
highlight Whitespace cterm=NONE guifg=Gray30 guibg=NONE

" Background
highlight Normal ctermbg=NONE guibg=#1d2021 guifg=#ebdbb2
highlight NonText ctermbg=NONE guibg=NONE

" Syntax
highlight Identifier guifg=#b16286
highlight Statement guifg=#d65d0e
highlight Comment guifg=#a89984
highlight PreProc guifg=#458588
highlight Type guifg=#ebdbb2
highlight Constant guifg=#98971a
highlight Special guifg=#689d6a
highlight Underlined guifg=#98971a
highlight Error guibg=#cc241d guifg=#282828

"--------------------------------------------------------------------
"                           StatusLine
"--------------------------------------------------------------------
" Colors
highlight StatusOne guifg=#a89984 guibg=#3c3836 gui=bold
highlight Modified guifg=#d79921 guibg=#3c3836
highlight StatusTwo guifg=#282828 guibg=#d5c4a1

" Status Colors
highlight DiffNormal guifg=#282828 guibg=#ebdbb2 gui=bold
highlight DiffInsert guifg=#282828 guibg=#98971a gui=bold
highlight DiffReplace guifg=#282828 guibg=#cc241d gui=bold
highlight DiffVisual guifg=#ebdbb2 guibg=#458588 gui=bold
highlight Buffer guifg=#ebdbb2 guibg=#7c6f64 gui=none

" Bar
set statusline=
set statusline+=%#DiffNormal#%{(mode()=='n')?'\NORMAL\ ':''}
set statusline+=%#DiffNormal#%{(mode()=='c')?'\COMMAND\ ':''}
set statusline+=%#DiffInsert#%{(mode()=='i')?'\INSERT\ ':''}
set statusline+=%#DiffReplace#%{(mode()=='R')?'\REPLACE\ ':''}
set statusline+=%#DiffVisual#%{(mode()=='v')?'\VISUAL\ ':''}
set statusline+=%#Buffer#\ %n\ 
set statusline+=%#Modified#\ %m
set statusline+=%#StatusOne#
set statusline+=%t\ %=
set statusline+=\ %{&fileencoding}\ \|
set statusline+=\ %Y\ 
set statusline+=%#Buffer#%3p%%\ 
set statusline+=%#StatusTwo#\ %l:%c\ 

"--------------------------------------------------------------------
"                           Tabline
"--------------------------------------------------------------------
highlight TabLine cterm=NONE gui=NONE guibg=#7c6f64 guifg=#282828
highlight TabLineSel gui=bold guibg=#d5c4a1 guifg=#282828
highlight TabLineFill guibg=#3c3836 cterm=NONE gui=NONE

set tabline=%!MyTabLine()
function! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    let tabnr = i + 1 " range() starts at 0
    let winnr = tabpagewinnr(tabnr)
    let buflist = tabpagebuflist(tabnr)
    let bufnr = buflist[winnr - 1]
    let bufname = fnamemodify(bufname(bufnr), ':t')

    let s .= '%' . tabnr . 'T'
    let s .= (tabnr == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
    let s .= ' ' . tabnr

    let n = tabpagewinnr(tabnr,'$')
    if n > 1 | let s .= ':' . n | endif

    let s .= empty(bufname) ? ' [No Name] ' : ' ' . bufname . ' '

    let bufmodified = getbufvar(bufnr, "&mod")
    if bufmodified | let s .= '+ ' | endif
  endfor
  let s .= '%#TabLineFill#'
  return s
endfunction

