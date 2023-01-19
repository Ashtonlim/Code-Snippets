# Aliases
# alias alias_name="command_to_run"

# alias lev="env -0 | sort -z | tr '\0' '\n'" 
alias lev='env | sort -f' # same as above

# pip
alias pipi='pip install'
alias pipiup='pip install --upgrade'
alias pipit='pip install --trusted-host pypi.org'
alias pipitup='pip install --trusted-host pypi.org --upgrade'

# git
alias gc='git clone'
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push'

# venv
alias denv='deactivate'

cenv() {
    if [ -z "$1" ]; then
        py -m venv venv
    else
        py -m venv $1
    fi
        source ./$1/Scripts/activate
        echo 'created and activated $1'
}

aenv() {
    if [ -z "$1" ]; then
        source ./venv/Scripts/activate
    else
        source ./$1/Scripts/activate
    fi
        echo 'activated $1'
}
