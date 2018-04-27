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
