#!/bin/bash
# nano for mac (ARM)
# This script installs nano, requires admin (root) 
# to copy the binary into /usr/local/bin

if [ "$(whoami)" != "root" ]; then
echo -e "run this script with sudo\nFor example: sudo bash install.sh"
exit 1
else
echo "[Syntax Highlighting] Ccopying nanorc/ to /usr/local/share"
cp -r nanorc/ /usr/local/share
echo "Installing the personal .nanorc file in your homedir (copying .nanorc to your homedir)"
cp .nanorc ~/
echo "Copying nano binary to /usr/local/bin"
cp bin/nano /usr/local/bin; chmod +x /usr/local/bin/nano
echo "Done." 
fi
