#!/bin/bash

command -V brew > /dev/null 2>&1 || {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew tap caskroom/fonts
    brew cask install caskroom/fonts/font-hack
}

