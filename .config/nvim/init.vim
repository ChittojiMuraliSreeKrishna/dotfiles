" Storage For Vim Plugs
set runtimepath^=$HOME/.vim

" Leader Key
let mapleader = " "

" Plugs
call plug#begin('$HOME/.vim/plugged')

runtime plugs.vim

call plug#end()

" Settings
runtime settings.vim

" Keymaps
runtime keymaps.vim

" Plug-Configs || General-Configs
runtime! plug-config/*.vim
runtime! gen-config/*.vim

" color Schemes
if exists("&termguicolors") && exists("&winblend")
    syntax enable
    set termguicolors
    set winblend=0
    set pumblend=5
    set background=dark
    let g:neosolarized_termtrans=1
    runtime ./colors/NeoSolarized.vim
    colorscheme NeoSolarized
endif

