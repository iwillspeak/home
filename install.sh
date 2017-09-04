#! /usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s ${DIR}/.profile ~/.profile
ln -s ${DIR}/.emacs.d ~/.emacs.d
ln -s ${DIR}/.gitconfig ~/.gitconfig
ln -s ${DIR}/.gitignore_global ~/.gitignore_global
ln -s ${DIR}/.inputrc ~/.inputrc

open "http://color.smyck.org/"

brew/install.sh
