#! /usr/bin/env bash

which brew > /dev/null 2>&1
if ! $?
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Tap the brew bundle command
brew tap homebrew/bundle
cd $(dirname $0)/.
brew bundle
