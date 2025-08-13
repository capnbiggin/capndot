#!/usr/bin/env bash

DEVS=(
  wget
  curl
  unzip
  inetutils
  impala
  fd
  eza
  fzf
  ripgrep
  zoxide
  bat
  jq
  wl-clipboard
  cliphist
  fastfetch
  btop
  man
  tldr
  less
  whois
  plocate
  alacritty
  ghostty
  kitty
)

for app in "${DEVS[@]}"; do
  yay -S --noconfirm --needed $app
done
