#! /usr/bin/bash

# TODO ask for username to run play script as
# TODO add a delete option to remove changes
# TODO add loginctl enable-linger for the username given

# Copy udev rules to the udev rules folder
sudo cp udev/61-cdplayer.rules /lib/udev/rules.d/

# Copy udev scripts
sudo mkdir -p /lib/udev/scripts/
sudo cp -r scripts/startplaycdservice.sh /lib/udev/scripts/
sudo chmod +x /lib/udev/scripts/startplaycdservice.sh

# Copy services
mkdir -p ~/.config/systemd/user/
cp services/playcdoninsert.service ~/.config/systemd/user/