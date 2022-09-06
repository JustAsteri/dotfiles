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
xargs -a packages.txt sudo pacman -S && 
xargs -a yay_packages.txt yay -S && 
sh manual_installation.sh && 
sh ~/dotfiles/.installation/make-symlinks.sh && 
sudo pacman -Rsn $(pacman -Qdtq) && 
fish &&
# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
