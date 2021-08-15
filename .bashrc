# ~/.bashrc

# Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White
NC="\e[m"               # Color Reset

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd
shopt -s cdspell
shopt -s checkhash
shopt -s cdable_vars
shopt -s checkwinsize
shopt -s sourcepath

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -al --color=auto'
alias ..='cd ..'
alias javaScript='cd $HOME/Documents/Codes/javaScript'
alias Pyrhon='cd $HOME/Documents/Codes/Python'
alias gitHub='cd $HOME/Documents/GitHub'
alias Python='cd $HOME/Documents/Codes/Python'
alias editbash='nvim $HOME/.bashrc'
alias bashsrc='source $HOME/.bashrc'
