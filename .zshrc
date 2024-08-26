export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nano'

# -------
# Aliases
# -------
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias y-irptas="cd ~/code/port81lv8php81node14/src/irptas"
alias y-citiport="cd ~/code/port81lv8php81node14/src/citiport"

# ----------------------
# Git Aliases
# ----------------------
alias gaa='git add .'
alias gcm='git commit -m'
alias gpsh='git push'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'

# ----------------------
# Docker Aliases
# ----------------------

# Docker Reals + Laravel 6

RLS_PREFIX_CONTAINER="reals83"
RLS_BASH_CONTAINER="$RLS_PREFIX_CONTAINER-php-1"

alias dock-start-reals='cd ~/code/$RLS_PREFIX_CONTAINER && docker-compose up -d'
alias dock-stop-reals='cd ~/code/$RLS_PREFIX_CONTAINER && docker-compose stop'
alias dock-bash-reals='dock-start-reals && docker exec -it $RLS_BASH_CONTAINER /bin/bash'

# Docker Laravel 8

LV8_PREFIX_CONTAINER="port81lv8php81node14"
LV8_BASH_CONTAINER="$LV8_PREFIX_CONTAINER-php-1"

alias dock-start-lv8='cd ~/code/$LV8_PREFIX_CONTAINER && docker-compose up -d'
# alias dock-start-lv8='docker ps --filter "name=$LV8_PREFIX_CONTAINER*" -q | xargs docker start'
alias dock-stop-lv8='cd ~/code/$LV8_PREFIX_CONTAINER && docker-compose stop'
# alias dock-stop-lv8='docker ps --filter "name=$LV8_PREFIX_CONTAINER*" -q | xargs docker stop'
alias dock-bash-lv8='dock-start-lv8 && docker exec -it $LV8_BASH_CONTAINER /bin/bash'

# Docker Laravel 11

LV11_PREFIX_CONTAINER="port82lv11php83node20"
LV11_BASH_CONTAINER="$LV11_PREFIX_CONTAINER-php-1"

alias dock-start-lv11='cd ~/code/$LV11_PREFIX_CONTAINER && docker-compose up -d'
# alias dock-start-lv11='docker ps --filter "name=$LV11_PREFIX_CONTAINER*" -q | xargs docker start'
alias dock-stop-lv11='cd ~/code/$LV11_PREFIX_CONTAINER && docker-compose stop'
# alias dock-stop-lv11='docker ps --filter "name=$LV11_PREFIX_CONTAINER*" -q | xargs docker stop'
alias dock-bash-lv11='dock-start-lv11 && docker exec -it $LV11_BASH_CONTAINER /bin/bash'