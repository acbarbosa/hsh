#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

setup_brew() {
    command -V brew > /dev/null 2>&1 || {
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    }

    if [ ! -d /usr/local/Frameworks ]; then
        sudo mkdir -p /usr/local/Frameworks
        sudo chown -R "$(whoami)" /usr/local/Frameworks
    fi

    brew update && brew upgrade

    brew bundle --file="${SCRIPT_DIR}/Brewfile" -v
    brew bundle --file="${SCRIPT_DIR}/Brewfile.developer" -v
    brew bundle --file="${SCRIPT_DIR}/Brewfile.clojure" -v
}

setup_rvm() {
    [ ! -d "${HOME}/.rvm" ] && curl -sSL https://get.rvm.io | bash -s stable
}

setup_brew
setup_rvm

[ ! -d "${HOME}/.nvm" ] && mkdir "${HOME}/.nvm"
