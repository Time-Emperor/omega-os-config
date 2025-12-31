#!/bin/bash

#----------OMEGA OS PROMPT---------------------
echo "------------------------------------------"
echo "WELCOME TO THE OMEGA-OS DEVELOPMENT SCRIPT"
echo"-------------------------------------------"
read -p "Type "o" and press Enter to begin the installation: " choice

if [[ "$choice" !="O" && "$choice" !="o" ]]; then
echo "Installation cancelled by user."
exit 1
fi
#----------------------------------------
echo "Starting OmegaOS Deployment..."

#1. Update System
sudo pacman -Syu

#2. Install Essentials
sudo pacman -S --needed base-devel git firefox steam pipewire lib32-pipewire

#3. Install yay (AUR Helper) if not present
if ! command -v yay &> /dev/null; then
	echo "Installing yay....."
	git clone https://aur.archlinux.org/yay,git /tmp/yay
	cd /temp/yay && makepkg -si
	cd -
fi

#4. Install OmegaOS Visuals
echo "Applying Sweet Theme and Icons...."
yay -S sweet-kde-theme-git candy-icons-git

#5. Apply your Configs (THe Dotfiles)
echo "Syncing configurations...."
cp .bashrc ~/
mkdir -p ~/.config
cp config/kdeglobals ~/.config/
mkdir -p ~/.local/share/konsole
cp -r local/share/konsole/* ~/.local/share/konsole/

echo "OmegaOS is ready! Please log out and back in."
