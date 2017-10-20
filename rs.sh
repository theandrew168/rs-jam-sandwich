#!/bin/bash

#
# sudo apt install wildmidi
#

# Extract the midis (if not already done)
if [ ! -f music/runescape-harmony.mid ]; then
    unzip music/music.zip -d music/
fi

# Shuffle the songs and play em
cd music/
wildmidi $(ls *.mid | sort -R)
