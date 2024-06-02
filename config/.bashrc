export EDITOR=vim
export HISTSIZE=-1
export HISTFILESIZE=-1
export all_proxy='http://127.0.0.1:10450'
export http_proxy='http://127.0.0.1:10450'
export https_proxy='http://127.0.0.1:10450'

alias eenv='rundll32 sysdm.cpl,EditEnvironmentVariables'
alias gp='git pull'
alias gc='git clone'
alias l='ls -lAF --color=auto'
alias e=$EDITOR
alias gfixup='git commit -a --fixup HEAD && GIT_SEQUENCE_EDITOR=: git rebase -i --autosquash HEAD~2'
alias grep='grep --color=auto'
alias rv='revertversion'
function revertversion(){
    if [ $# -ne 1 ]; then
        echo "Usage: revertversion <version>"
        return 1
    fi
    echo "Reverting version $@"
    git push origin :refs/tags/$@
    git tag -d $@
    git tag $@
    git push --tags
}

