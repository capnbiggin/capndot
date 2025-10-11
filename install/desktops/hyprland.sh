#!/usr/bin/env bash

C='\033[0m'    # no color
G='\033[0;32m' # green color
R='\033[0;31m' # red color

HYPR=(
  hyprland-git
  hypridle
  hyprpicker
  hyprlock
  swww
  wl-clipboard
  rofi
  waybar
  waypaper
  wallust
  matugen
)

for pkg in $HYPR; do
  yay -S --needed --noconfirm "$pkg" ||
    printf "\n${R}Failed to install $pkg. Continuing without!${C}\n"
done

printf "\n${G}Linking Hyperland config files${C}\n"
ln -s ~/.local/share/capndot/config/hypr ~/.config/hypr
ln -s ~/.local/share/capndot/config/waybar/ ~/.config/waybar
ln -s ~/.local/share/capndot/config/waypaper/ ~/.config/waypaper
ln -s ~/.local/share/capndot/config/rofi ~/.config/rofi
