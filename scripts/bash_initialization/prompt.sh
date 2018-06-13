# Prompt customization
parse_git() {
    BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/')
    echo -e "\033[48;5;51m $BRANCH \033[0m"
}

parse_date() {
    echo -e "\033[48;5;21m $(date '+%b %d %H:%M') \033[0m"
}

parse_path() {
    echo -e "\033[48;5;201m $(pwd) \033[0m"
}

export PS1="\n\$(parse_date)\$(parse_path)\$(parse_git)\[\033[0m\]\n$ "
