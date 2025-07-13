# do not show banner

$env.config.show_banner = false
$env.config.keybindings = [
    {
        name: take_history_hint
        modifier: none
        keycode: tab
        mode: [emacs, vi_normal]
        event: {
            until: [
                { send: historyhintwordcomplete }
            ]
        }
    }
];



# my env

# $env.EDITOR = 'code'  # vscode 编辑器没有 blocking terminal，会导致一些奇奇怪怪的问题，建议不要设置
$env.ALL_PROXY = 'http://127.0.0.1:10450'
$env.HTTP_PROXY = 'http://127.0.0.1:10450'
$env.HTTPS_PROXY = 'http://127.0.0.1:10450'
$env.SCCACHE_CACHE_SIZE = "50G"
# $env.SCCACHE_DIR = "D:/cache/sccache"

# my functions

# open windows user environment config panel
def eenv [] {
  rundll32 sysdm.cpl,EditEnvironmentVariables
}

# revert a git tag
def rv [version: string] {
    echo $"Reverting version $version ..."
    git push origin $":refs/tags/($version)"
    git tag -d $version
    git tag $version
    git push --tags
}

# Creates a fixup commit for a specific commit and autosquashes it via interactive rebase.
#
# Usage:
#   gfixup           # Creates a fixup commit for the current HEAD and rebases
#   gfixup <hash>    # Creates a fixup commit for <hash> and rebases
#
def gfixup [commit_hash?: string = 'HEAD'] {
    git commit -a --fixup $commit_hash
    let rebase_target = if $commit_hash == 'HEAD' { 'HEAD~2' } else { ($commit_hash | str trim) + "~1" }
    GIT_SEQUENCE_EDITOR=: git rebase -i --autosquash $rebase_target
}

alias l = ls
alias gp = git pull
alias gc = git clone
# alias e = $EDITOR
alias grep = rg


# starship
$env.STARSHIP_SHELL = "nu"
def create_left_prompt [] {
    starship prompt --cmd-duration $env.CMD_DURATION_MS $'--status=($env.LAST_EXIT_CODE)'
}
# Use nushell functions to define your right and left prompt
$env.PROMPT_COMMAND = { || create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = ""
# The prompt indicators are environmental variables that represent
# the state of the prompt
$env.PROMPT_INDICATOR = ""
$env.PROMPT_INDICATOR_VI_INSERT = ": "
$env.PROMPT_INDICATOR_VI_NORMAL = "〉"
$env.PROMPT_MULTILINE_INDICATOR = "::: "

# pay-respects: https://github.com/iffse/pay-respects

def --env f [] {
    let dir = (with-env { _PR_LAST_COMMAND: (history | last).command, _PR_SHELL: nu } { "C:/Users/lxl/.cargo/bin/pay-respects.exe" })
    # echo $"Running ($dir) ..."
    cd $dir
}

# fnm

fnm env --json | from json | load-env
use std "path add"
path add $env.FNM_MULTISHELL_PATH

# atuin

source ~/.local/share/atuin/init.nu

# zoxide

zoxide init nushell | save -f ~/.zoxide.nu
source ~/.zoxide.nu