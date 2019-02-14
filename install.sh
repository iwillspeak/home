#! /usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# link up the dotfiles containing global settings
ln -sh ${DIR}/.profile ~/.profile
ln -sh ${DIR}/.emacs.d ~/.emacs.d
ln -sh ${DIR}/.gitconfig ~/.gitconfig
ln -sh ${DIR}/.gitignore_global ~/.gitignore_global
ln -sh ${DIR}/.inputrc ~/.inputrc
ln -sh ${DIR}/.bashrc ~/.bashrc
ln -sh ${DIR}/.bash_profile ~/.bash_profile

# install the Terminal colour theme
colourtheme/install.sh

# Install Homebrew and packages
brew/install.sh

# Fixup the font rendering in Visual Studio Code
defaults write com.microsoft.VSCode.helper CGFontRenderingFontSmoothingDisabled -bool NO
