#!/bin/bash

# Go root
sudo -s

# Update keys
archlinux-keyring-wkd-sync
pacman-key --init
pacman-key --populate archlinux
pacman-key --refresh-keys

# Update system
sudo pacman -Syu

# Install packages
pacman -Sy fish neovim neofetch openssh go npm xclip

# Set fish as default
chsh -s /usr/bin/fish

# Exit sudo -s
exit

# Git config
git config --global user.email "lostlang@icloud.com"
git config --global user.name "Alec Lang"

