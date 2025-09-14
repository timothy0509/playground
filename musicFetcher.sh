#!/bin/bash

# Ensure a link was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <YouTube link>"
    exit 1
fi

# Create the audio directory if it doesn't exist
mkdir -p audio

# Run yt-dlp with the best audio -> FLAC
yt-dlp \
    -f 'bestaudio' \
    --extract-audio \
    --audio-format flac \
    --audio-quality 0 \
    -o "audio/%(title)s.%(ext)s" \
    "$1"
