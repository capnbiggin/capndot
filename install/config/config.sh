#!/usr/bin/env bash

# Link capndot configs
ln -s ~/.local/share/capndot/config/* ~/.config/
ln -s ~/.local/share/capndot/home-config/.fehbg ~/.fehbg
ln -s ~/.local/share/capndot/home-config/.xinitrc ~/.xinitrc
ln -s ~/.local/share/capndot/home-config/.zshenv ~/.zshenv

# Set identification from install inputs
if [[ -n "${GIT_USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$GIT_USER_NAME"
fi

if [[ -n "${GIT_USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$GIT_USER_EMAIL"
fi
