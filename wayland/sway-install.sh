#!/bin/sh

sudo apt update
sudo apt install sway

DSTDIR=~/.config/sway
if [ ! -d $DSTDIR ]; then
  mkdir $DSTDIR
  cp /usr/local/etc/sway/config $DSTDIR+=/
else
  if [ -n "$(ls -A $DSTDIR)" ]; then
    echo "Files exist.=> $DSTDIR"
  fi
fi

