#!/usr/bin/env bash

# Link capndot configs
ln -s ~/.local/share/capndot/config/* ~/.config/

# Set identification from install inputs
if [[ -n "${GIT_USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$GIT_USER_NAME"
fi

if [[ -n "${GIT_USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$GIT_USER_EMAIL"
fi
