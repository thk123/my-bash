parse_git_branch() {
    # Taken from https://medium.com/@thucnc/how-to-show-current-git-branch-with-colors-in-bash-prompt-380d05a24745
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

__prompt_command() {
    local EXIT="$?"             # This needs to be first
    PS1=""


    local RCol='\[\e[0m\]'

    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'
    local BYel='\[\e[1;33m\]'
    local BBlu='\[\e[1;34m\]'
    local Pur='\[\e[0;35m\]'

    PS1+="${Pur}\w${BYel} \$(parse_git_branch)\n"
    # Inspired from https://stackoverflow.com/questions/16715103/bash-prompt-with-last-exit-code
    if [ $EXIT != 0 ]; then
        PS1+="${Red}[${EXIT}]${RCol}"      # Add red if exit code non 0
    else
        PS1+="${Gre}[${EXIT}]${RCol}"
    fi

    PS1+=" $ ${RCol}"
}
