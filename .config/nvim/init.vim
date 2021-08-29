" Store vim plugs
set runtimepath^=$HOME/.vim-plug

" Leader Key
let mapleader = " "

" Plugs
call plug#begin('$HOME/.vim-plug/plugged')

runtime plugs.vim

call plug#end()

" Settings
runtime settings.vim

" Keymaps
runtime keymaps.vim

" Plugin-Configs || General-Configs
runtime! plug-config/*.vim
runtime! gen-config/*.vim

