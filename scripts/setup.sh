#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

command -V brew > /dev/null 2>&1 || {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

brew bundle --file="${SCRIPT_DIR}/Brewfile"
brew bundle --file="${SCRIPT_DIR}/Brewfile.developer"
