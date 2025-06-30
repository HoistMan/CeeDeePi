#! /usr/bin/bash

# Copy udev rules to the udev rules folder
sudo cp udev/61-cdplayer.rules /lib/udev/rules.d/

# Copy udev scripts
sudo mkdir -p /lib/udev/scripts/
sudo cp -r scripts/playcdoninsert.sh /lib/udev/scripts/

# Copy services
mkdir -p ~/.config/systemd/user/
cp services/playcdoninsert.service ~/.config/systemd/user/