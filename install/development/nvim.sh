#!/usr/bin/env bash

if ! command -v nvim &>/dev/null; then
  yay -S --noconfirm --needed vim nvim luarocks tree-sitter-cli

fi
