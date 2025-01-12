set -o vi
source <(fzf --zsh)
eval "$(starship init zsh)"

# alias source
source $HOME/.alias

# plugins & extensions
autoload -U compinit; compinit
source $HOME/.zsh_plugins/fzf_tab/fzf-tab.plugin.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(pyenv init -)"
