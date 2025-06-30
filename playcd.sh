#!/bin/bash
#
# Indefinitely checks a CD is inserted, then plays it and ejects the CD

while true; do
    # Check that CD is inserted
    cd-discid
    if [ $? -eq 0 ]; then
        # Play the CD then eject
        cvlc -I dummy --play-and-exit cdda:///dev/cdrom
        eject /dev/cdrom
    fi

    sleep 3s
done

