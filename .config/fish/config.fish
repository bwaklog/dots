if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx PATH "$HOME/.rvm/bin" /opt/homebrew/bin /usr/local/opt/ruby/bin "/usr/local/lib/ruby/gems/2.6.3p62/bin" "~/go/bin" /Library/PostgreSQL/17/bin/ /usr/local/bin "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH
    set -gx NVM_DIR "$HOME/.nvm" $NVM_DIR

    set PATH $HOME/.cargo/bin $PATH

    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx GIT_EDITOR nvim

    source $HOME/.config/fish/functions/alias.fish


    set -g fish_key_bindings fish_vi_key_bindings
end

source $HOME/.config/fish/functions/alias.fish

pyenv init - fish | source
