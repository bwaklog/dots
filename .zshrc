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

export PATH="/opt/homebrew/bin":$PATH
export PATH="$HOME/go/bin/":$PATH

alias orb="TERM=xterm-256color orb"

# QOL Alias
alias ll="ls -lh"
alias la="ls -lah"
alias v="NVIM_APPNAME=sloth nvim"
alias pdfcombine="/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/MacOS/join"

# QOL git
alias gs="git status"
alias gl="git log"
alias glog="git log --online --graph"
alias glogda="git log --online --graph --decorate --abbrev"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit"
alias gcan="git commit --amend --no-edit"
alias gp="git push"

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

# zsh prompts
autoload -Uz promptinit
promptinit
prompt redhat
