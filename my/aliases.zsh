#!/bin/zsh

# alias
## my favorite aliases
alias clr="clear" # Clear your terminal screen
alias ip="curl icanhazip.com" # Your public IP address
alias o="open ." # Open the current directory in Finder
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

## git
alias ga='git add'
alias gaa='git add --all'
alias gsd="git switch dev"
alias gsm="git switch main"
alias gl='git pull'
alias gp='git push'
alias gpd='git push --dry-run'
alias gpoat='git push origin --all && git push origin --tags'
alias gm='git branch --merged | grep -v \* | xargs'
alias gdm1='git branch --merged | grep -v \* | xargs git branch -D'
alias gdm="$HOME/my/delete_merged_branches.zsh"

## Kubernetes
alias watch='watch '

## Paths
alias go.dev='cd ~/dev'
alias go.gmana='cd ~/gmana'
alias go.pm='cd ~/pathmazing'

## Mac
alias mac.cleardns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; say cache flushed'

## tools
if [ -x "$(command -v bat)" ]; then
  alias cat="bat --theme='OneHalfLight'"
fi
if [ "$(command -v htop)" ]; then
    alias top='htop --tree'
fi
# By default, fd ignores files and directories that are hidden or listed in the .gitignore.
# `fda` & `rga` disable this feature
if [ -x "$(command -v fd)" ]; then
  alias fda='fd -IH'
fi
if [ -x "$(command -v rg)" ]; then
  alias rga='rg -uuu'
  alias grep='rga'
fi
if [ -x "$(command -v dust)" ]; then
  alias du='dust'
fi
if [ -x "$(command -v procs)" ]; then
  alias ps='procs'
fi

## Docker
alias docker.cleancontainer='docker ps -a -q | xargs docker rm'
alias docker.cleanimage='docker images --filter dangling=true -q | xargs docker rmi'