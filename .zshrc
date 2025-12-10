source <(fzf --zsh)
eval "$(jenv init -)"
eval "$(starship init zsh)"

# alias source
# source $HOME/.alias
# source $HOME/shorts.sh

# plugins & extensions
autoload -U compinit; compinit
source $HOME/.zsh_plugins/fzf-tab/fzf-tab.plugin.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source $HOME/shorts.sh

# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init - zsh)"

eval "$(mise activate zsh)"

. "$HOME/.cargo/env"

export PATH="/opt/homebrew/bin":$PATH
# export PATH="$HOME/go/bin/":$PATH
export PATH="$HOME/dev/aseprite/build/bin/":$PATH
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

export PATH="$HOME/.local/share/mise/shims/:$PATH"

export PATH="/opt/homebrew/opt/openssl/bin/":$PATH

# homebrew curl
# export PATH="/opt/homebrew/opt/curl/bin/":$PATH
# INFO:
# For compilers to find curl you may need to set:
#   export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
#   export CPPFLAGS="-I/opt/homebrew/opt/curl/include"
# 
# For pkg-config to find curl you may need to set:
#   export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"

alias orb="TERM=xterm-256color orb"

# QOL Alias
alias ll="ls -lh"
alias la="ls -lah"
alias v="NVIM_APPNAME=sloth nvim"
alias pdfcombine="/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/MacOS/join"

# QOL git
alias gs="git status"
alias gl="git log"
alias glog="git log --oneline --graph"
alias glogda="git log --oneline --graph --decorate --abbrev"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit"
alias gcan="git commit --amend --no-edit"
alias fancy_log='git log --all --graph --pretty=format:"%h %an %ad %s" --date=short'
alias gp="git push"

alias acpi='system_profiler SPPowerDataType | grep "Cycle Count"'

export EDITOR=nvim

# set vim mode
set -o vi
# set edit in vim with ^X^E
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

# initialization of zsh completion system
autoload -U compinit && compinit

# start zsh-autosuggestion
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh prompts
# autoload -Uz promptinit
# promptinit
# prompt redhat
# setopt prompt_sp

eval "$(zoxide init zsh)"
# source ~/.local/share/zsh/zoxide/z.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

if [[ -f $HOME/sophos.sh ]]; then
    source $HOME/sophos.sh
fi

if [[ -f $HOME/dev/scam/commit.sh ]]; then
    source $HOME/dev/scam/commit.sh
fi
