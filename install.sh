#! /usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# link up the dotfiles containing global settings
ln -sni ${DIR}/.profile ~/.profile
ln -sni ${DIR}/.emacs.d ~/.emacs.d
ln -sni ${DIR}/.gitconfig ~/.gitconfig
ln -sni ${DIR}/.gitignore_global ~/.gitignore_global
ln -sni ${DIR}/.inputrc ~/.inputrc
ln -sni ${DIR}/.bashrc ~/.bashrc
ln -sni ${DIR}/.bash_profile ~/.bash_profile

case `uname` in
	Darwin)
		echo "Installing macOS speicalities"
		ln -sni ${DIR}/code/settings.json ~/Library/Application\ Support/Code/User/settings.json
		# install the Terminal colour theme
		colourtheme/install.sh
		# Install Homebrew and packages
		brew/install.sh
		# Fixup the font rendering in Visual Studio Code
		defaults write com.microsoft.VSCode.helper CGFontRenderingFontSmoothingDisabled -bool NO
		;;
	
	Linux)
		echo "Installing linux speicalities"
		ln -sni ${DIR}/code/settings.json ~/.config/Code/User/settings.json
		sudo ln -sni ${DIR}/logid.cfg /etc/logid.cfg
		;;
esac
