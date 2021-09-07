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
