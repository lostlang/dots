#!/bin/bash

# Update system
sudo pacman -Syu --noconfirm

# Install packages
sudo pacman -Syu --noconfirm openssh zip unzip inetutils
sudo pacman -Syu --noconfirm fish zellij neovim neofetch htop
sudo pacman -Syu --noconfirm python go npm rustup

# Setup fish
sudo chsh -s /usr/bin/fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bira
cp -r omf $HOME/.config

# Setup zellij
cp -r zellij $HOME/.config

# Setup nvim
git clone https://github.com/lostlang/NvimConfig.git $HOME/.config/nvim
git clone https://aur.archlinux.org/golangci-lint.git golangci-lint
cd golangci-lint
makepkg -sic --noconfirm
cd ..

# Setup rust
rustup default stable

# Git config
git config --global user.email "lostlang@icloud.com"
git config --global user.name "Alec Lang"
git config --global core.editor nvim

