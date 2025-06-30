#!/bin/bash

# direct output to log file
echo "started script"
exec >> /tmp/playcdoninsert/cdscript.log 2>&1

echo "1"
# Check that CD is inserted
cd-discid
echo "checked cd-discid"
if [ $? -eq 0 ]; then
    echo "playing cd"
    # Play the CD then eject
    runuser -l tremaine -c "cvlc -I dummy --play-and-exit cdda:///dev/cdrom"
else
    echo "killing vlc"
    # assume playback interrupted, stop playback process
    pkill vlc
fi