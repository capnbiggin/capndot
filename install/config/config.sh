#!/usr/bin/env bash

# makeing ZDOTDIR directory for zsh plugins
mkdir -p ~/.config/zsh/plugins/

# Link capndot configs
ln -s ~/.local/share/capndot/config/* ~/.config/
ln -s ~/.local/share/capndot/default/shell/zshenv ~/.zshenv
ln -s ~/.local/share/capndot/default/shell/zshrc ~/.config/zsh/.zshrc
ln -s ~/.local/share/capndot/default/shell/zprofile ~/.config/zsh/.zprofile

# Set identification from install inputs
if [[ -n "${GIT_USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$GIT_USER_NAME"
fi

if [[ -n "${GIT_USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$GIT_USER_EMAIL"
fi
