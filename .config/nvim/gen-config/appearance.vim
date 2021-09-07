"--------------------------------------------------------------------
"                           StatusLine
"--------------------------------------------------------------------
" Colors
highlight StatusOne guifg=#fbf1c7 guibg=Gray10
highlight Modified guifg=#d79921 guibg=Gray10
highlight StatusTwo guifg=#282828 guibg=#fbf1c7

" Status Colors
highlight DiffNormal guifg=#282828 guibg=#fbf1c7 gui=bold
highlight DiffInsert guifg=#282828 guibg=#98971a gui=bold
highlight DiffReplace guifg=#282828 guibg=#cc241d gui=bold
highlight DiffVisual guifg=#fbf1c7 guibg=#458588 gui=bold
highlight Buffer guibg=Gray guifg=#282828 gui=none

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
highlight TabLine cterm=NONE gui=NONE guibg=#3c3836 guifg=#fbf1c7
highlight TabLineSel gui=bold guibg=#fbf1c7 guifg=#282828
highlight TabLineFill guibg=Gray10 cterm=NONE gui=NONE

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

"--------------------------------------------------------------------
"                           Other Options
"--------------------------------------------------------------------
" Color Column
highlight ColorColumn cterm=NONE guibg=Grey30

" Cursor Line
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Green

" Line Numbers
highlight LineNr cterm=NONE ctermfg=240 guifg=#ffffff guibg=Grey30

" White spaces
highlight Whitespace cterm=NONE guifg=#458588 guibg=NONE

" Comment
highlight Comment guifg=#a89984


