#!/bin/bash

sudo pacman -Sy

#Instalar Gnome-Terminal
sudo pacman -S gnome-terminal

#Editar pacman.conf 
sudo nano /etc/pacman.conf

#Instalar yay Gerenciador de pacotes
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
#.
yay -Sy

#Instalar Zsh terminal
sudo pacman -S zsh neofetch


#Tornar o Zsh terminal padrão
chsh -s $(which zsh)

#Papirus Icon para Arch Linux
sudo pacman -S papirus-icon-theme

#Customização do terminal#

# Instalar Oh-my-zsh! -> https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Instalar Spaceship Prompt
# https://github.com/spaceship-prompt/spaceship-prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Mudar ~/.zshrc -> ZSH_THEME="agnoster"

# Instalar Zsh Autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Instalar Zsh Syntax Highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Mudar plugins
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)


#Instalar Pacman-Contrib - extensão arch linux updater
sudo pacman -S pacman-contrib

#Instalar FWUPD - Gerenciamento de Hardware
sudo pacman -S fwupd
fwupdmgr get-devices
fwupdmgr refresh
fwupdmgr get-updates
fwupdmgr update


#Instalar VSCODE, Google Chrome, Firefox
yay -S google-chrome visual-studio-code-bin firefox

#Instalar VLC para ter codecs de video e audio
sudo pacman -S vlc

#Serviços#
#Thermald - gerenciador de temperatura da CPU
sudo pacman -S thermald
systemctl enable thermald.service

#Perfis de potência Gnome
sudo pacman -S power-profiles-daemon
systemctl enable power-profiles-daemon.service

#Laptop Misc
sudo pacman -S acpid
systemctl enable acpid.service

#Frequência CPU Automatica
yay -S auto-cpufreq
sudo auto-cpufreq --install

#Firewall
sudo pacman -S gufw
systemctl enable ufw.service
sudo gufw

#Driver's
#Driver de Video - Intel
sudo pacman -S xf86-video-intel mesa lib32-mesa vulkan-intel lib32-vulkan-intel
sudo pacman -S intel-media-driver libva-intel-driver libva-utils intel-gpu-tools
sudo pacman -S intel-ucode

#Open VPN - Network Manager
sudo pacman -S networkmanager-openvpn


#Pyenv Intaller
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
# Seguir instruções do Pyenv

#Amplificação sobre o volume padrão de audio gnome
gsettings set org.gnome.desktop.sound allow-volume-above-100-percent 'true'\

#!!!!!!!!REBOOT"""""""""REBOOT

#Limpar cache tanto do YAY quanto pacman
#yay -Sc     