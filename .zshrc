if type brew &>/dev/null
then
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

autoload -Uz compinit
compinit
fi

# add my scripts
[[ -f ~/my/exports.zsh ]] && source ~/my/exports.zsh
[[ -f ~/my/paths.zsh ]] && source ~/my/paths.zsh
[[ -f ~/my/functions.zsh ]] && source ~/my/functions.zsh
[[ -f ~/my/aliases.zsh ]] && source ~/my/aliases.zsh
[[ -f ~/my/extra.zsh ]] && source ~/my/extra.zsh
