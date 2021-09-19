#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

ulimit -S -c 0
set -o notify
set -o noclobber
set -o ignoreeof

shopt -s autocd
shopt -s cdspell
shopt -s checkhash
shopt -s cdable_vars
shopt -s checkwinsize
shopt -s sourcepath

PS1='|(\u)\A{\W}|:\$ '

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -al --color=auto'
alias ..='cd ..'
alias java='mkdir -p $HOME/Documents/Codes/java && cd $HOME/Documents/Codes/java'
alias javaScript='mkdir -p $HOME/Documents/Codes/javaScript && cd $HOME/Documents/Codes/javaScript'
alias Python='mkdir -p $HOME/Documents/Codes/Python &&  cd $HOME/Documents/Codes/Python'
alias gitHub='mkdir -p $HOME/GitHub && cd $HOME/Documents/GitHub'

# git
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gp='git push -U origin main'

# bash
alias editbash='nvim $HOME/.bashrc'
alias bashsrc='source $HOME/.bashrc'
alias debug='set -o nounset; set -o xtrace'
