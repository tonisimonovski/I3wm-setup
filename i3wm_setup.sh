#!/usr/bin/env bash

# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y xorg xserver-xorg xbacklight xbindkeys xinput

# build-essential
sudo apt install -y build-essential

# xdg-user-dirs-update updates the current state of the users user-dirs.dir.
xdg-user-dirs-update
mkdir ~/Oldconfig

# Tools/System
sudo apt install -y dialog mtools dosfstools acpi acpid gvfs-backends xfce4-power-manager avahi-daemon lxappearance neofetch
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Network 
sudo apt install -y network-manager network-manager-gnome

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Terminal (eg. terminator,kitty,xfce4-terminal)
# sudo apt install -y kitty tilix 

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# Browser Installation (eg. chromium, brave, firefox-esr, librewolf)
sudo apt install -y firefox-esr

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# sudo apt install -y nitrogen 
sudo apt install -y feh

# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus papirus-icon-theme

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa


# Printing and bluetooth (if needed)
# sudo apt install -y cups system-config-printer simple-scan
# sudo apt install -y bluez blueman

# sudo systemctl enable cups
# sudo systemctl enable bluetooth

# Packages needed for window manager installation
sudo apt install -y picom rofi dunst libnotify-bin unzip wmctrl xdotool libnotify-dev

# Geany Text Editor, text editor, markdown editor
# sudo apt install -y geany 
# sudo apt install -y geany-plugin-addons geany-plugin-git-changebar geany-plugin-overview geany-plugin-spellcheck geany-plugin-treebrowser geany-plugin-vimode
# sudo apt install -y geany-plugins \ # all plugins
# sudo apt install -y mousepad ghostwriter
# sudo apt install -y l3afpad

# My Favorites
# Multimedia/GFX
sudo apt install -y mpv qimgv scrot gimp obs-studio mkvtoolnix-gui redshift eog brightnessctl

# PDF 
sudo apt install -y  evince pdfarranger

# Others
sudo apt install -y numlockx 
sudo apt install -y figlet 
sudo apt install -y galculator
sudo apt install -ycpu-x
sudo apt install -y udns-utils
sudo apt install -y whois 
sudo apt install -y curl 
sudo apt install -y tree

# Install Lightdm Console Display Manager
# sudo apt install -y lightdm lightdm-gtk-greeter-settings
# sudo systemctl enable lightdm

########################################################
# End of script 
#

sudo apt autoremove

printf "\e[1;32mFinished! Thanks you.\e[0m\n"

