set -gx EDITOR nvim

fish_add_path /opt/homebrew/bin
fish_add_path "$HOME/.cargo/bin"
fish_add_path "$HOME/dev/aseprite/build/bin"
fish_add_path /opt/homebrew/opt/openssl/bin
fish_add_path "$HOME/.local/bin"
fish_add_path "$BUN_INSTALL/bin"
fish_add_path "$HOME/.local/share/mise/shims"

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    zoxide init fish | source
    mise activate fish | source

    fish_vi_key_bindings

    fzf --fish | source
end

set fish_greeting ""
eval "$(/opt/homebrew/bin/brew shellenv)"


abbr -a orb "TERM=xterm-256color orb"
abbr -a ll "ls -lh"
abbr -a la "ls -lah"
abbr -a v nvim
abbr -a vim nvim
abbr -a pdfcombine "/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/MacOS/join"

# Git QOL
abbr -a gs "git status"
abbr -a gl "git log"
abbr -a glog "git log --oneline --graph"
abbr -a glogda "git log --oneline --graph --decorate --abbrev"
abbr -a ga "git add"
abbr -a gaa "git add --all"
abbr -a gc "git commit"
abbr -a gcan "git commit --amend --no-edit"
abbr -a fancy_log 'git log --all --graph --pretty format:"%h %an %ad %s" --date short'
abbr -a gp "git push"

alias acpi='system_profiler SPPowerDataType | grep "Cycle Count"'
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

function ipv4
    if test -z "$argv[1]"
        if command -q fzf
            set -l interface (ifconfig -l | tr ' ' '\n' | fzf)
            if test -n "$interface"
                ifconfig $interface | grep 'inet ' | awk '{print $2}'
            end
        else
            echo "ERROR: fzf not installed"
        end
    else
        ifconfig "$argv[1]" | grep 'inet ' | awk '{print $2}'
    end
end

function proxy
    ssh -v -N -D 127.0.0.1:1080 \
        adi@ssh.adihegde.com \
        -o ProxyCommand="cloudflared access ssh --hostname ssh.adihegde.com"
end

function fish
    source ~/.config/fish/config.fish
end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
