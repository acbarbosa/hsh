if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc" 
fi

for script in "$HOME"/scripts/bash_initialization/*.sh; do
    source "$script"
done

