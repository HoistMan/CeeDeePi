# CeeDeePi
## Summary
Simple turntable-style CD player. Put in CD, start playing audio.

## Usage instructions
Run CDplayer.sh. Inserting a CD into the drive will start playback.

## Requirements
- Raspberry Pi 3 B+ running raspbian (or similar variant at your own risk)
- External USB CD/DVD drive
- Audio output, either Pi audio jack or external DAC

# Setup and Installation
1. Connect CD/DVD drive and external audio output (if using) to Pi through USB ports
2. Use `sudo raspi-config` to configure the audio output to the appropriate device
3. Set the desired audio output level from Pi, if needed, using ALSA mixer, for example, `amixer -d sset Master 80%`

## Troubleshooting
- If audio does not play, check dmesg to see if the CD player is resetting from drawing too much power from the Pi. If this is happening, the safest solution is to connect the CD/DVD player and any other DAC peripherals to the Pi through an externally powered USB hub that is capable of handling the needed current draw.