#!/usr/bin/env bash

# makeing ZDOTDIR directory for zsh plugins
mkdir -p ~/.config/zsh/plugins/

# Link capndot configs
ln -s ~/.local/share/capndot/config/* ~/.config/

# Link zsh Configs
rm-rf ~/.zshenv
ln -s ~/.local/share/capndot/default/shell/zshenv ~/.zshenv
rm -rf ~/.config/zsh/.zshrc
ln -s ~/.local/share/capndot/default/shell/zshrc ~/.config/zsh/.zshrc
rm -rf ~/.config/zsh/.zprofile
ln -s ~/.local/share/capndot/default/shell/zprofile ~/.config/zsh/.zprofile

# copy over bash Configs
rm -rf ~/.bashrc
cp -r ~/.local/share/capndot/default/shell/bashrc ~/.bashrc
rm -rf ~/.bash_profile
cp -r ~/.local/share/capndot/default/shell/bash_profile ~/.bash_profile
