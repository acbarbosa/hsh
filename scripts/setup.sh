#!/bin/bash

command -V brew > /dev/null 2>&1 || {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew tap caskroom/fonts
    brew cask install caskroom/fonts/font-hack
}

command -V /usr/local/bin/emacs > /dev/null 2>&1 || {
    brew install emacs
}


if [ ! -e "/Applications/Google Chrome.app" ]; then
    brew cask install google-chrome
fi

if [ ! -e "/Applications/Firefox.app" ]; then
    brew cask install firefox
fi

if [ ! -e "/Applications/Skype.app" ]; then
    brew cask install skype
fi

if [ ! -e "/Applications/1Password 6.app" ]; then
    brew cask install 1password
fi

if [ ! -e "/Applications/Slack.app" ]; then
    brew cask install slack
fi

if [ ! -e "/Applications/IntelliJ IDEA.app" ]; then
    brew cask install intellij-idea
fi

java -version >/dev/null 2>&1 || {
    brew cask install java
}

command -V gradle >/dev/null 2>&1 || {
    brew install gradle
}

command -V docker >/dev/null 2>&1 || {
    brew cask install docker
}

if [ ! -e "/usr/local/Cellar/git" ]; then
    brew install git
fi

if [ ! -e "/Applications/Insomnia.app" ]; then
    brew cask install insomnia
fi

if [ ! -e "/Applications/Postman.app" ]; then
    brew cask install postman
fi


if [ ! -e "$HOME/.nvm" ]; then
    brew install nvm
    mkdir $HOME/.nvm
fi

command -V rvm >/dev/null 2>&1 || {
    bash "$(dirname $0)/rvm-installer.sh" stable --ignore-dotfiles
}


command -V jenv >/dev/null 2>&1 || {
    brew install jenv
}

