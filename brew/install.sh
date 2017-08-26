#! /usr/bin/env bash

# Tap the brew bundle command
brew tap homebrew/bundle
cd $(dirname $0)/.
brew bundle
