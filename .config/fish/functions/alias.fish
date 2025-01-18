function xssh
    set TERM xterm-256color
    ssh $argv
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
