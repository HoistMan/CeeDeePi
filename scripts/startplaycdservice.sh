#!/bin/bash

USERNAME="username"
logger startplaycdservice.sh: starting user service with USERNAME="$USERNAME"

# Start cd player service as the user given during install
sudo -u "$USERNAME" XDG_RUNTIME_DIR=/run/user/$(id -u $USERNAME) systemctl --user start playcdoninsert.service
