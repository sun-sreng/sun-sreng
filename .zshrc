# add my scripts
[[ -f ~/sun-sreng/exports.zsh ]] && source ~/sun-sreng/exports.zsh
[[ -f ~/sun-sreng/paths.zsh ]] && source ~/sun-sreng/paths.zsh
[[ -f ~/sun-sreng/functions.zsh ]] && source ~/sun-sreng/functions.zsh
[[ -f ~/sun-sreng/aliases.zsh ]] && source ~/sun-sreng/aliases.zsh
[[ -f ~/sun-sreng/extra.zsh ]] && source ~/sun-sreng/extra.zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/sun-sreng/.bun/_bun" ] && source "/Users/sun-sreng/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/sun-sreng/.dart-cli-completion/zsh-config.zsh ]] && . /Users/sun-sreng/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
