source <(fzf --zsh)
# eval "$(starship init zsh)"

# alias source
source $HOME/.alias
source $HOME/shorts.sh

# plugins & extensions
autoload -U compinit; compinit
source $HOME/.zsh_plugins/fzf_tab/fzf-tab.plugin.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/shorts.sh

export NVM_DIR="$HOME/.nvm"
export PATH=$NVM_DIR:$PATH
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(pyenv init -)"

set -o vi

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line
