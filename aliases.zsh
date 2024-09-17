#!/bin/zsh
# source ~/.zshrc

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
alias gdm='git branch --format="%(refname:short)" --merged | grep -v "$(git branch --show-current)" | xargs -n 1 git branch -d'

## Kubernetes
alias watch='watch '

## Mac
alias mac.cleardns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; say cache flushed'

## Docker
# Stop all running containers:
alias docker.sc='docker ps -q | xargs -r docker stop'
# Remove all containers:
alias docker.rmc='docker ps -a -q | xargs docker rm'
# Remove all images:
alias docker.rmi='docker images --filter dangling=true -q | xargs docker rmi'
# Remove all volumes:
alias docker.rmv='docker volume ls -q | xargs -r docker volume rm'
# Remove any networks created by the user:
alias docker.rmnet='docker network prune -f'
# You can combine these into a single command sequence:
# alias docker.rm='docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker rmi $(docker images -q) && docker volume rm $(docker volume ls -q) && docker network prune -f'
alias docker.rm='docker ps -q | xargs -r docker stop && docker ps -a -q | xargs docker rm && docker images --filter dangling=true -q | xargs docker rmi && docker volume ls -q | xargs -r docker volume rm && docker network prune -f'

## flutter
alias o.ios='open ios/Runner.xcworkspace'
alias br='dart run build_runner build -d'
alias brw='dart run build_runner watch -d'
alias up='flutter pub upgrade'
alias upm='flutter pub upgrade --major-versions'