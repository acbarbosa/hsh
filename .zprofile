if [ -f "$HOME/.zshrc" ]; then
    . "$HOME/.zshrc" 
fi

for script in "$HOME"/scripts/bash_initialization/*.sh; do
    source "$script"
done

