#!/usr/bin/env bash

CDOT_INSTALL=~/.local/share/capndot/install

# Exit immediately if a command exits with a non-zero status
set -e

catch_errors() {
  echo -e "\n\e[31mCapndot installation failed!\e[0m"
  echo "You can retry by running: bash ~/.local/share/capndot/install.sh"
}

trap catch_errors ERR

show_logo() {
  clear
  echo -e "\033[96m"
  cat <~/.local/share/capndot/logo.txt
  echo -e "\033[0m"
}

show_logo

# Install Prerequisites
printf "\nInstalling AUR helper yay...\n"
source $CDOT_INSTALL/preflight/aur-yay.sh
source $CDOT_INSTALL/preflight/presentation.sh

# Config
show_logo
printf "\nStarting Capndot Install\n"
source
