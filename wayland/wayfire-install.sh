"!/bin/sh

sudo apt install wayfire

DSTDIR=~/.config/wayfire
if [ ! -d $DSTDIR ]; then
  mkdir $DSTDIR
  cp /usr/local/share/examples/wayfire/wayfire.ini $DSTDIR+=/
else
  if [ -n "$(ls -A $DSTDIR)" ]; then
    echo "Files exist.=> $DSTDIR"
  fi
fi
