function xssh
    set TERM xterm-256color
    ssh $argv
end

function vi
    # nvim $argv
    NVIM_APPNAME=sloth nvim $argv
end

function v
    # nvim $argv
    NVIM_APPNAME=sloth nvim $argv
end

function nvim_lazy
     nvim $argv
end

function alpine
    sudo docker run --rm -it alp
end

function pdfcombine
    /System/Library/Automator/Combine\ PDF\ Pages.action/Contents/MacOS/join $argv
end

function pdfread
    set base_path Library/Mobile\ Documents/com~apple~CloudDocs/PESU
end

################################
# git aliases                  #
################################

function gs
    git status $argv
end

function gl
    git log $argv
end

function glogda
    git log --oneline --graph --decorate --abbrev $argv
end

function glogd
    git log --oneline --graph --decorate $argv
end

function ga
    git add $argv
end

function gaa
    git add --all $argv
end

function gc
    git commit $argv
end

function gcm
    git commit -m $argv
end

function gcan
    git commit --amend --no-edit $argv
end

function gp
    git push $argv
end
