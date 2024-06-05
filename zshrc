# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="elessar"

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
# PROMPT="[%F{220}%m%f@ %(?.%F{14}%1~.%F{9}%1~)%f]%f${NEWLINE}λ "
#PROMPT="[%F{green}%m%f|%(?.%F{14}%1~.%F{9}%1~)%f]%f${NEWLINE}λ "
#PROMPT="[%n@%(?.%F{14}%1~.%F{9}%1~)%f]%f${NEWLINE}λ "

# Retain the default prompt ad add new line
PROMPT="%n@%1~${NEWLINE}λ "


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions fzf-tab)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

# bun completions
# [ -s "/Users/adityahegde/.bun/_bun" ] && source "/Users/adityahegde/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# some quick aliases
alias gs="git status"
alias gl="git log"
alias gp="git push"
alias gd="git diff"
alias la="ls -la"
alias glog="git log --oneline --graph --all"
alias gfp="git add .; git commit --amend --no-edit; git push origin main --force"
alias cat="bat"
alias fastfetch='fastfetch --logo none'

# function to use make and build file and use leaks 

# export PATH=”$HOME/.emacs.d/bin:$PATH”
export PATH="~/.config/emacs/bin:$PATH"
export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"

# export MANPATH="/usr/local/man:$MANPATH"
# source "/Users/adityahegde/emsdk/emsdk_env.sh"
#EMSDK_QUIET=1

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/adityahegde/.juliaup/bin' $path)
export PATH
# EMSDK_QUIET=1

# <<< juliaup initialize <<<


# [[ "$TERM_PROGRAM" == "CodeEditApp_Terminal" ]] && . "/Applications/CodeEdit.app/Contents/Resources/codeedit_shell_integration.zsh"

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/adityahegde/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/adityahegde/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/adityahegde/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/adityahegde/google-cloud-sdk/completion.zsh.inc'; fi


# Fig post block. Keep at the bottom of this file.
# eval $(thefuck --alias)

#
export GPG_TTY=$(tty)
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin


[[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
