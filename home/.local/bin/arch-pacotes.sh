#!/bin/bash
# github.com/mamutal91

(cat ~/.cache/wal/sequences &)

USUARIO=d1060

sudo pacman -Sy

readonly PACOTES_PACMAN=(
    git i3-gaps i3lock compton dunst rofi mpd maim neofetch scrot lxappearance feh gpicview python-pywal python-setuptools zsh openssh cronie plasma-browser-integration
    termite terminus-font
    telegram-desktop
    code
    firefox firefox-i18n-pt-br
    thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman 
    mesa
    xorg-server xorg-xrandr xorg-xbacklight xorg-xinit xorg-xprop xautolock xclip
    linux-headers networkmanager numlockx gvfs unrar unzip wget)

readonly PACOTES_AUR=(
    polybar jsoncpp
    ttf-dejavu ttf-font-awesome)

function instalar_pacotes_pacman(){
    for i in "${PACOTES_PACMAN[@]}"; do
        sudo pacman -S ${i} --needed --noconfirm
    done 
}

function instalar_pacotes_aur(){
    for i in "${PACOTES_AUR[@]}"; do
        yay -S ${i} --needed --noconfirm
    done 
}


function configurar_sistema(){
    sudo systemctl enable NetworkManager
    sudo systemctl enable cronie
    sudo chown -R $USUARIO:$USUARIO /home/$USUARIO
    sudo gpasswd -a $USUARIO bumblebee
}

instalar_pacotes_pacman
instalar_pacotes_aur
configurar_sistema