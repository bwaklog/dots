if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx PATH "$HOME/.rvm/bin" /opt/homebrew/bin /usr/local/opt/ruby/bin "/usr/local/lib/ruby/gems/2.6.3p62/bin" "~/go/bin" /Library/PostgreSQL/17/bin/ /usr/local/bin "$HOME/.config/emacs/bin" "/Users/grogu/.nvm/versions/node/v22.14.0/bin/" $PATH
    set -gx NVM_DIR "$HOME/.nvm" $NVM_DIR

    set -gx PATH /usr/local/bin/maelstrom/ $PATH
    set -gx CPPFLAGS -I/opt/homebrew/opt/openjdk/include

    set PATH $HOME/.cargo/bin $PATH

    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx GIT_EDITOR nvim

    source $HOME/.config/fish/functions/alias.fish

    string match -q "$TERM_PROGRAM" vscode
    and . (code --locate-shell-integration-path fish)

    fzf --fish | source

    set -g fish_key_bindings fish_vi_key_bindings
end

source $HOME/.config/fish/functions/alias.fish

# pyenv init - fish | source

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
