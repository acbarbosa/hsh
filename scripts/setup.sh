#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

command -V brew > /dev/null 2>&1 || {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

if [ ! -d /usr/local/Frameworks ]; then
    sudo mkdir -p /usr/local/Frameworks
    sudo chown -R "$(whoami)" /usr/local/Frameworks
fi

brew update && brew upgrade
brew bundle --cleanup -v --file="${SCRIPT_DIR}/Brewfile"

[ ! -d "${HOME}/.nvm" ] && mkdir "${HOME}/.nvm"

# Install node global packages
. "$(brew --prefix nvm)/nvm.sh"
nvm use default
while IFS= read -r module
do
    npm install -g "${module}"
done < "${SCRIPT_DIR}/node_global_modules"
