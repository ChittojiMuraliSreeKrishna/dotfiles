#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#!/usr/bin/env bash


[ -r "$HOME/.bash_prompt" ] && [ -f "$HOME/.bash_prompt" ] && source $HOME/.bash_prompt;
[ -r "$HOME/.bash_local" ] && [ -f "$HOME/.bash_local" ] && source $HOME/.bash_local;
[ -r "$HOME/.bash_aliases" ] && [ -f "$HOME/.bash_aliases" ] && source $HOME/.bash_aliases;
[ -r "$HOME/.bash_functions" ] && [ -f "$HOME/.bash_functions" ] && source $HOME/.bash_functions;


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

FMT_BOLD="\[\e[1m\]"
FMT_DIM="\[\e[2m\]"
FMT_RESET="\[\e[0m\]"
FMT_UNBOLD="\[\e[22m\]"
FMT_UNDIM="\[\e[22m\]"
FG_BLACK="\[\e[30m\]"
FG_BLUE="\[\e[34m\]"
FG_CYAN="\[\e[36m\]"
FG_GREEN="\[\e[32m\]"
FG_GREY="\[\e[37m\]"
FG_MAGENTA="\[\e[35m\]"
FG_RED="\[\e[31m\]"
FG_WHITE="\[\e[97m\]"
FG_YELLOW="\[\e[33m\]"

export PS1=\
"\n${FG_BLUE}╭─${FG_WHITE}| ${FG_RED}${FMT_BOLD}\u ${FMT_UNBOLD}${FG_WHITE}\A "\
"\$(git branch 2> /dev/null | grep '^*' | colrm 1 2 | xargs -I BRANCH echo -n \"${FG_YELLOW} BRANCH ${FMT_RESET}\")"\
"| ${FG_WHITE}${FG_GREEN}\w${FG_WHITE}"\
"\n${FG_BLUE}╰▶${FG_CYAN} ${FMT_RESET}"

# Common Alias 
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -al --color=auto'
alias ..='cd ..'

# React Alias
alias nstart='npm start'
alias nbuild='npm run build'
alias neject='npm run eject'

# React native Alias
alias rstart='npx react-native start'
alias rrun='npx react-native run-android'
alias rbuild='npx react-native run-android --variant=release'
alias gclen='cd android && ./gradlew clean'

# Django Alias
alias dcreate='django-admin startproject'
alias dstart='python3 manage.py startapp'
alias drun='python3 manage.py runserver'
alias dmigrations='python3 manage.py makemigrations'
alias dmigrate='python3 manage.py migrate'
alias dsuper='python3 manage.py createsuperuser'
alias dstat='python3 manage.py stats'

# Bash Alias
alias editbash='nvim $HOME/.bashrc'
alias bashsrc='source $HOME/.bashrc'
alias debug='set -o nounset; set -o xtrace'



[ -f ~/.fzf.bash ] && source ~/.fzf.bash
