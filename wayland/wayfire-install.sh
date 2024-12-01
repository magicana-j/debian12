"!/bin/sh

sudo apt install wayfire

DIRNAME=~/.config/wayfire
if [ -d $DIRNAME ]; then
    mkdir $DIRNAME
  else
    echo "Files exist."
fi
