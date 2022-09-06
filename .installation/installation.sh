#!/bin/bash

# Be sure to be in ~/dotfiles/installation

# 1. Update                     
# 2. Install packages           -> packages.txt
# 3. Install yay packages       -> yay_packages.txt
# 4. Install configurationss    -> configs.txt
# 5. Uninstall unused packages  -> manjaro_pkgs.txt
# 6. Start fish

sudo pacman-mirrors -g && 
sudo pacman -Syyu && 
sudo pacman -S xargs && 
xargs -a packages.txt sudo pacman -S && 
xargs -a yay_packages.txt yay -S && 
sh manual_installation.sh && 
sh dotfiles_installation && 
sudo pacman -Rsn $(pacman -Qdtq) && 
fish