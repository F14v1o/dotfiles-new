#!/bin/bash

# 1. Export application lists
echo "Saving app lists..."
pacman -Qqen > ~/newdotfiles/pacman-list.txt
pacman -Qqem > ~/newdotfiles/yay-list.txt

# 2. Copy core shell configurations
echo "Saving shell configurations..."
cp ~/.bashrc ~/newdotfiles/.bashrc

# 3. Copy application-specific configs (Neovim & XFCE shortcuts)
echo "Saving app configurations..."
mkdir -p ~/newdotfiles/config/nvim ~/newdotfiles/config/xfce4 ~/newdotfiles/config/systemd/user
rsync -av --delete --exclude '.git' ~/.config/nvim/ ~/newdotfiles/config/nvim/
rsync -av --delete ~/.config/xfce4/ ~/newdotfiles/config/xfce4/

# 4. Copy background automation services (Google Drive mount)
echo "Saving systemd services..."
cp ~/.config/systemd/user/rclone-gdrive.service ~/newdotfiles/config/systemd/user/

echo "Dotfiles updated locally!"
