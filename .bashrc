# original PS1:
# PS1="\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$"

# custom bash prompt look
PS1='\# \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\] $ '


# Aliases
# alias alias_name="command_to_run"

# conda
alias ccenv='conda create -n'
alias ccenvyml='conda env create -f'
alias cpy='C:/Users/limashto/AppData/Local/miniconda3/python.exe'
# how to rename from https://stackoverflow.com/questions/42231764/how-can-i-rename-a-conda-environment
alias cre='conda rename -n' # old_name -d new_name (-d for dry run) 
alias delenv='conda env remove -n'
alias creqls='conda list -e > requirements.txt'

# useful misc
# alias lev="env -0 | sort -z | tr '\0' '\n'" 
alias lev='env | sort -f' # same as above, Lists Env Vars (LEV) 

# pip
alias pipi='pip install'
alias pipiup='pip install --upgrade'
alias pipit='pip install --trusted-host pypi.org'
alias pipitup='pip install --trusted-host pypi.org --upgrade'
alias pipl='pip list --trusted-host pypi.org'

# java
alias lgc='./gradlew clean'
alias lgcb='./gradlew clean build'
alias lgcbr='./gradlew clean build --refresh-dependencies'

alias ggc='gradle clean'
alias ggcb='gradle clean build'
alias ggcbr='gradle clean build --refresh-dependencies'

# git
alias gc='git clone' # <addr>
alias ga='git add' # <list_of_file_names>
alias gcm='git commit -m' # 'msg here'
alias gcam='git commit -am' # 'msg here'
alias gp='git push'
# removes files/dir (dir req -r) for files added and commited locally (b4 pushed)
alias grmc='git rm -f -r --chached' # <file_or_dir_name>

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
