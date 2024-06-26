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
pacman -Sy fish neovim neofetch openssh go npm xclip unzip ripgrep htop gcc make deno rustup rust-analyzer

# Set fish as default
chsh -s /usr/bin/fish

# Work with windows cp buffer
curl -sLo /tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
mv /tmp/win32yank.exe /usr/local/bin/

# Exit sudo -s
exit

# Git config
git config --global user.email "lostlang@icloud.com"
git config --global user.name "Alec Lang"
git config --global core.editor nvim

