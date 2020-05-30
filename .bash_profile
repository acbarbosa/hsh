if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc" 
fi

for script in "$HOME"/scripts/bash_initialization/*.sh; do
    source "$script"
done


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
