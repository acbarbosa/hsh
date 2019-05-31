if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc" 
fi

. "$HOME/scripts/bash_initialization/prompt.sh"
. "$HOME/scripts/bash_initialization/aliases.sh"
. "$HOME/scripts/bash_initialization/nvm.sh"
. "$HOME/scripts/bash_initialization/brew_completions.sh"
