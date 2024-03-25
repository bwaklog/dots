# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
#
#Loading rbenv into shell
eval "$(rbenv init - zsh)"

autoload -U promptinit && promptinit

# vcs stuff
autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info

# vcs info style
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats '%b%u%c'
# when repo in action (merge, rebase, etc)
zstyle ':vcs_info:git*' actionformats '%F{14}⏱ %*%f'
zstyle ':vcs_info:git*' unstagedstr '*'
zstyle ':vcs_info:git*' stagedstr '+'
# This enables %u and %c (unstaged/staged changes) to work,
# but can be slow on large repos
zstyle ':vcs_info:*:*' check-for-changes true

# Set the right prompt to the vcs_info message
RPROMPT='⎇ ${vcs_info_msg_0_}'


NEWLINE=$'\n'
# PROMPT="[%F{220}%n%f%F{118}@%f%F{148}%m%f %(?.%F{14}%1~.%F{9}%1~)%f]%f${NEWLINE}λ "
PROMPT="[%F{220}%m%f@ %(?.%F{14}%1~.%F{9}%1~)%f]%f${NEWLINE}λ "

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
   cd ~/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/College
}

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

# bun completions
[ -s "/Users/adityahegde/.bun/_bun" ] && source "/Users/adityahegde/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# some quick aliases
alias gs="git status"
alias gl="git log"
alias gp="git push"
alias gd="git diff"
alias la="ls -la"

alias cat="bat"

# export PATH=”$HOME/.emacs.d/bin:$PATH”
export PATH="~/.config/emacs/bin:$PATH"
export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"

# export MANPATH="/usr/local/man:$MANPATH"
source "/Users/adityahegde/emsdk/emsdk_env.sh"
EMSDK_QUIET=1

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/adityahegde/.juliaup/bin' $path)
export PATH
# EMSDK_QUIET=1

# <<< juliaup initialize <<<


[[ "$TERM_PROGRAM" == "CodeEditApp_Terminal" ]] && . "/Applications/CodeEdit.app/Contents/Resources/codeedit_shell_integration.zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/adityahegde/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/adityahegde/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/adityahegde/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/adityahegde/google-cloud-sdk/completion.zsh.inc'; fi


# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

export GPG_TTY=$(tty)
eval $(thefuck --alias)

PATH=~/.console-ninja/.bin:$PATH
