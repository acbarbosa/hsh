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


