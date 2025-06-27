source <(fzf --zsh)
eval "$(starship init zsh)"

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

export PATH="/opt/homebrew/bin":$PATH

alias orb="TERM=xterm-256color orb"

# set vim mode
set -o vi
# set edit in vim with ^X^E
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

# initialization of zsh completion system
autoload -U compinit && compinit

# start zsh-autosuggestion
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
