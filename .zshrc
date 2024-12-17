# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions fzf-tab)

source $ZSH/oh-my-zsh.sh

function orgDir() {
    cd ~/Library/Mobile\ Documents/iCloud~com\~appsonthemove\~beorg/Documents/org
}

function localCollegeDir() {
    cd ~/Documents/PESU\ Local
}

function cloudCollegeDir() {
    cd ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/PESU 
}

function obsidianDir() {
   cd ~/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/
}

function doit() {
    if [ -z "$1" ]; then
        echo "Usage : doit <time-in-minutes>"
        return 1
    fi

    local tim=$1
    local cmd="timer $tim\m && terminal-notifier -message 'Pomodoro 🍅'\
                -title 'Timer is up 🕒'\
                -sound Blow"

    eval "$cmd"
}

function valgrind() {
    if [ -z "$1" ]; then
        echo "Usage: valgrind <filename>"
        return 1
    fi

    local filename=$1 
    local cmd="make $filename; leaks --quiet --atExit -- ./$filename"

    eval "$cmd"
} 

function cbr() {
  cargo b --release
  if [ $? -eq 0 ]; then
    # Find the compiled binary name
    binary_name=$(basename $(find target/release -maxdepth 1 -type f -perm +111 -print))

    # Copy the binary to the parent directory
    cp "target/release/$binary_name" "../$binary_name"

    echo "Binary '$binary_name' copied to the parent directory."

  else
    echo "Cargo build failed."
  fi
}

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/Library/TeX/texbin:$PATH"

# some quick aliases
alias gs="git status"
alias gl="git log"
alias gp="git push"
alias gd="git diff"
alias la="ls -la"
alias glog="git log --oneline --graph --all"
alias gcan="git commit --amend --no-edit"
alias gfp="git add .; git commit --amend --no-edit; git push origin main --force"
alias fastfetch='fastfetch --logo none'
alias cat='bat --style plain -n'

export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/adityahegde/.juliaup/bin' $path)
export PATH
# EMSDK_QUIET=1

# <<< juliaup initialize <<<

# Fig post block. Keep at the bottom of this file.
# eval $(thefuck --alias)

export GPG_TTY=$(tty)
export GOPATH=$HOME/user/local/go
export GOBIN=$HOME/user/local/go/bin/
export PATH=$PATH:$GOPATH:$GOBIN
export PATH="$HOME/.emacs.d/bin:$PATH"

# Brew completions
if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi

# Verilog stuff
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/lib/pkgconfig:/opt/homebrew/opt/libffi/lib/pkgconfig:/opt/homebrew/opt/zlib/lib/pkgconfig:/opt/homebrew/opt/gtk+3/lib/pkgconfig:/opt/homebrew/opt/expat/lib/pkgconfig"

EDITOR=nvim;
VISUAL=nvim;
GIT_EDITOR=nvim;

alias v='nvim'
alias python='python3'
alias gitdiff='git difftool --tool=nvimdiff'
# alias emacs='emacs --no-window-system'

alias cdf='cd $(dirname $(fzf -e))'
alias nfd='cd $(dirname $(fzf -e)); nvim .'
alias nf='nvim $(fzf -e)'

NNN_PLUG='l:-!git log;o:-!&zed "$nnn";v:-!nvim "$nnn"'
export NNN_PLUG

set -o vi

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line


autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
# RPROMPT='%F{yellow}${vcs_info_msg_0_}%f $(date +%H:%M) 🎄'
RPROMPT='%F{yellow}${vcs_info_msg_0_}%f $(date +%H:%M)'
# RPROMPT='${vcs_info_msg_0_} 🎄'
PROMPT="%(?.%F{yellow}.%F{red})*%flog(%1~) "
zstyle ':vcs_info:git:*' formats '%b'

source <(fzf --zsh)

alias ssh="TERM=xterm-256color ssh"

[[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"
alias tsc="tailscale"

export NVM_DIR="$HOME/.nvm"

# does not work??
export PATH="~/.config/emacs/bin/:$PATH"

alias doom="~/.config/emacs/bin/doom"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# echo "
# TODO:
# [ ] Setup espanso
# [ ] Cook
# "

unsetopt beep
# Just so that i read it each time
# fortune | lolcat
echo -e "$(/bin/cat ~/tree)"
fortune

source "$HOME/shorts.sh"

# Yeah we dont talk about this
# [[ $TERM == "xterm-kitty" ]] && kitten icat --align left go.png

export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"

[ -f "/Users/adityahegde/.ghcup/env" ] && . "/Users/adityahegde/.ghcup/env" # ghcup-env

. "$HOME/.cargo/env"
