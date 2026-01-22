source <(fzf --zsh)

# Shell Prompt
eval "$(starship init zsh)"

# zsh prompts
# autoload -Uz promptinit
# promptinit
# prompt redhat
# setopt prompt_sp


# plugins & extensions
autoload -U compinit && compinit
source $HOME/.zsh_plugins/fzf-tab/fzf-tab.plugin.zsh
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source $(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


. "$HOME/.cargo/env"

export PATH="/opt/homebrew/bin":$PATH
export PATH="$HOME/dev/aseprite/build/bin/":$PATH
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

export PATH="$HOME/.local/share/mise/shims/:$PATH"

export PATH="/opt/homebrew/opt/openssl/bin/":$PATH
export LESS='--mouse --wheel-lines=1'

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
alias v="nvim"
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

ipv4 ()
{
    if [ -z "$1" ]; then
        ifconfig "$(ifconfig -l | tr ' ' '\n' | fzf)" \
            | grep 'inet ' \
            | awk '{print $2}'
    else
        ifconfig "$1" \
            | grep 'inet ' \
            | awk '{print $2}'
    fi
}

alias acpi='system_profiler SPPowerDataType | grep "Cycle Count"'
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

export EDITOR=nvim

# set vim mode
set -o vi
# set edit in vim with ^X^E
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line


eval "$(zoxide init zsh)"
eval "$(mise activate zsh)"

# Created by `pipx` on 2025-12-24 16:00:03
export PATH="$PATH:/Users/grogu/.local/bin"

# bun completions
[ -s "/Users/grogu/.bun/_bun" ] && source "/Users/grogu/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

proxy ()
{
    ssh -v -N -D 127.0.0.1:1080 \
        adi@ssh.adihegde.com \
        -o ProxyCommand="cloudflared access ssh --hostname ssh.adihegde.com"
}
