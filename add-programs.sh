#!/bin/sh

sudo apt install htop vim neovim nano neofetch git ufw gufw timeshift flatpak podman fcitx5 fcitx5-mozc
im-connfig -n fcitx5
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
LANG=C xdg-user-dirs-gtk-update
