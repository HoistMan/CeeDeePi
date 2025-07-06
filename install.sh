#! /usr/bin/bash

# TODO add a delete option to remove changes
loginctl enable-linger $USER

# Copy udev rules to the udev rules folder
sudo cp udev/61-cdplayer.rules /lib/udev/rules.d/

# Copy udev scripts
sudo mkdir -p /lib/udev/scripts/
envsubst < scripts/startplaycdservice.sh | sudo tee /lib/udev/scripts/startplaycdservice.sh > /dev/null
sudo chmod +x /lib/udev/scripts/startplaycdservice.sh

# Copy services
mkdir -p ~/.config/systemd/user/
cp services/playcdoninsert.service ~/.config/systemd/user/