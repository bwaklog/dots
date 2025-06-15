if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx PATH "$HOME/.rvm/bin" /opt/homebrew/bin /usr/local/opt/ruby/bin "/usr/local/lib/ruby/gems/2.6.3p62/bin" /Library/PostgreSQL/17/bin/ /usr/local/bin "$HOME/.config/emacs/bin" "/Users/grogu/.nvm/versions/node/v22.14.0/bin/" $PATH
    set -gx NVM_DIR "$HOME/.nvm" $NVM_DIR

    set -gx GOPATH "$HOME/go/bin/"
    set -gx GOBIN "$HOME/go/bin/bin/"
    set -gx PATH $GOPATH $GOBIN $PATH

    set -gx PATH /usr/local/bin/maelstrom/ $PATH
    set -gx CPPFLAGS -I/opt/homebrew/opt/openjdk/include

    set PATH $HOME/.cargo/bin $PATH

    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx GIT_EDITOR nvim

    set -Ux PYENV_ROOT $HOME/.pyenv
    set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
    pyenv init - fish | source

    set PICO_SDK_PATH /Users/grogu/dev/work/pil/clones/pico/pico-sdk/
    set ARM_NONE_EABI_PATH /Users/grogu/Downloads/gcc-arm-none-eabi/arm-none-eabi/include/

    set HOMEBREW_NO_ENV_HINTS 1

    source $HOME/.config/fish/functions/alias.fish

    fzf --fish | source

    set -g fish_key_bindings fish_vi_key_bindings
end

function fish_greeting
    # pfetch
    fortune
    uptime
end

function code
    set location "$PWD/$argv"
    open -n -b "com.microsoft.VSCode" --args $location
end

source $HOME/.config/fish/functions/alias.fish

# pyenv init - fish | source

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin /Users/grogu/.ghcup/bin $PATH # ghcup-env
