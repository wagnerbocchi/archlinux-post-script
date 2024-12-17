#!/bin/bash

# Função para instalar pacotes com pacman
instalar_pacotes() {
  sudo pacman -S "$@" || exit 1
}

# Função para instalar pacotes com yay
instalar_pacotes_aur() {
  if ! command -v yay &> /dev/null; then
    echo "Yay não encontrado. Instalando..."
    instalar_pacotes base-devel git
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
  fi
  yay -S "$@" || exit 1
}

# Instalar pacotes básicos
instalar_pacotes gnome-terminal zsh neofetch papirus-icon-theme pacman-contrib fwupd vlc thermald power-profiles-daemon acpid gufw xf86-video-intel mesa lib32-mesa vulkan-intel lib32-vulkan-intel intel-media-driver libva-intel-driver libva-utils intel-gpu-tools intel-ucode networkmanager-openvpn

# Instalar pacotes AUR
instalar_pacotes_aur google-chrome visual-studio-code-bin firefox auto-cpufreq

# ... adicione aqui outros comandos e personalizações ...




echo "Script de pós-instalação concluído!"