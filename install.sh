#! /usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sh ${DIR}/.profile ~/.profile
ln -sh ${DIR}/.emacs.d ~/.emacs.d
ln -sh ${DIR}/.gitconfig ~/.gitconfig
ln -sh ${DIR}/.gitignore_global ~/.gitignore_global
ln -sh ${DIR}/.inputrc ~/.inputrc
ln -sh ${DIR}/.bashrc ~/.bashrc
ln -sh ${DIR}/.bash_profile ~/.bash_profile

colourtheme/install.sh

brew/install.sh
