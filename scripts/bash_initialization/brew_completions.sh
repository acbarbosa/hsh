# From https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
if type brew >/dev/null 2>&1; then    
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

    autoload -Uz compinit
    compinit
fi
