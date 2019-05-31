#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

command -V brew > /dev/null 2>&1 || {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

brew update && brew upgrade

brew bundle --file="${SCRIPT_DIR}/Brewfile" -v
brew bundle --file="${SCRIPT_DIR}/Brewfile.developer" -v
brew bundle --file="${SCRIPT_DIR}/Brewfile.clojure" -v

[ ! -d "${HOME}/.nvm" ] && mkdir "${HOME}/.nvm"
