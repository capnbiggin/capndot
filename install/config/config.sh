#!/usr/bin/env bash

# makeing ZDOTDIR directory for zsh plugins
mkdir -p ~/.config/zsh/plugins/

# Link capndot configs
ln -s ~/.local/share/capndot/config/* ~/.config/
ln -s ~/.local/share/capndot/default/shell/zshenv ~/.zshenv
ln -s ~/.local/share/capndot/default/shell/zshrc ~/.config/zsh/.zshrc
ln -s ~/.local/share/capndot/default/shell/zprofile ~/.config/zsh/.zprofile
