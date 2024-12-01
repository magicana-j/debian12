#!/bin/sh

sudo apt update
sudo apt install labwc

DSTDIR=~/.config/labwc
if [ ! -d $DSTDIR ]; then
  mkdir $DSTDIR
  wget https://raw.githubusercontent.com/labwc/labwc/master/docs/environment -O ~/.config/labwc/environment
  wget https://raw.githubusercontent.com/labwc/labwc/master/docs/autostart -O ~/.config/labwc/autostart
  wget https://raw.githubusercontent.com/labwc/labwc/master/docs/menu.xml -O ~/.config/labwc/menu.xml
  wget https://raw.githubusercontent.com/labwc/labwc/master/docs/rc.xml -O ~/.config/labwc/rc.xml

else
  if [ -n "$(ls -A $DSTDIR)" ]; then
    echo "Files exist.=> $DSTDIR"
  fi
fi
