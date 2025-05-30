#! /usr/bin/env bash

mkdir -p ~/.copilot
mkdir -p ~/.config

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# link up the dotfiles containing global settings
ln -sni ${DIR}/.profile ~/.profile
ln -sni ${DIR}/.emacs.d ~/.emacs.d
ln -sni ${DIR}/.gitconfig ~/.gitconfig
ln -sni ${DIR}/.gitignore_global ~/.gitignore_global
ln -sni ${DIR}/.inputrc ~/.inputrc
ln -sni ${DIR}/.bashrc ~/.bashrc
ln -sni ${DIR}/.bash_profile ~/.bash_profile
ln -sni ${DIR}/copilot/config.json ~/.copilot/config.json

case `uname` in
	Darwin)
		echo "Installing macOS speicalities"
		ln -sni ${DIR}/code/settings.json ~/Library/Application\ Support/Code/User/settings.json
		ln -sni ${DIR}/code/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
		# install the Terminal colour theme
		colourtheme/install.sh
		# Install Homebrew and packages
		brew/install.sh
		# Fixup the font rendering in Visual Studio Code
		defaults write com.microsoft.VSCode.helper CGFontRenderingFontSmoothingDisabled -bool NO
		;;
	
	Linux)
		echo "Installing linux speicalities"
		mkdir -p ~/.config/Code/User
		ln -sni ${DIR}/code/settings.json ~/.config/Code/User/settings.json
		ln -sni ${DIR}/code/keybindings.json ~/.config/Code/User/keybindings.json
		sudo ln -sni ${DIR}/logid.cfg /etc/logid.cfg
		;;
esac
