#!/bin/sh
sudo apt update
sudo apt install swaybg swayidle swaylock xdg-desktop-portal-wlr xwayland
sudo apt install wdisplays kanshi waybar clipman mako picom grim slurp grimshot fuzzel foot alacritty fonts-font-awesome wlogout wlsunset
sudo apt install gammastep
#sudo apt install brightnessctl clipman network-manager-gnome
#sudo apt install pipewire-audio wireplumber pipewire-media-session-pulse
#sudo apt install pavucontrol playerctl
#sudo apt install bluetooth blueman

DSTDIR=~/.config/waybar
if [ ! -d $DSTDIR ]; then
  mkdir $DSTDIR
else
  if [ -n "$(ls -A $DSTDIR)" ]; then
    echo "Files exist.=> $DSTDIR"
  fi
fi

DSTDIR=~/.config/fuzzel
if [ ! -d $DSTDIR ]; then
  mkdir $DSTDIR
else
  if [ -n "$(ls -A $DSTDIR)" ]; then
    echo "Files exist.=> $DSTDIR"
  fi
fi

DSTDIR=~/.config/foot
if [ ! -d $DSTDIR ]; then
  mkdir $DSTDIR
  cp -r ./foot $DSTDIR+=/
else
  if [ -n "$(ls -A $DSTDIR)" ]; then
    echo "Files exist.=> $DSTDIR"
  fi
fi

DSTDIR=~/.config/alacritty
if [ ! -d $DSTDIR ]; then
  mkdir $DSTDIR
  cat << EOF >> ~/.config/alacritty/alacritty.toml
[window]
opacity = 0.8

[font]
size = 12.0

EOF
else
  if [ -n "$(ls -A $DSTDIR)" ]; then
    echo "Files exist.=> $DSTDIR"
  fi
fi
