#!/bin/bash

# 1. Export application lists
echo "Saving app lists..."
pacman -Qqen >~/dotfiles/pacman-list.txt
pacman -Qqem >~/dotfiles/yay-list.txt

# 2. Copy core shell configurations
echo "Saving shell configurations..."
cp ~/.bashrc ~/dotfiles/.bashrc

# 3. Copy application-specific configs (Neovim & XFCE shortcuts)
echo "Saving app configurations..."
rsync -av --delete ~/.config/nvim/ ~/dotfiles/config/nvim/
rsync -av --delete ~/.config/xfce4/ ~/dotfiles/config/xfce4/

# 4. Copy background automation services (Google Drive mount)
echo "Saving systemd services..."
cp ~/.config/systemd/user/rclone-gdrive.service ~/dotfiles/config/systemd/user/

echo "Dotfiles updated locally!"
