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

export PICO_SDK_PATH="$HOME/dev/work/pil/pico/pico-sdk"
export ARM_NONE_EABI_PATH="$HOME/dev/work/pil/pico/gcc-arm-none-eabi/arm-none-eabi/include/"

# ARM_NONE_EABI_BIN_PATH="$HOME/dev/work/pil/pico/gcc-arm-none-eabi/bin/"
# export PATH=$ARM_NONE_EABI_PATH:$PATH

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line
