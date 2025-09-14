#!/bin/bash

# Ensure a link was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <YouTube link>"
    exit 1
fi

# Create the audio directory if it doesn't exist
mkdir -p audio

# Run yt-dlp with worst audio -> MP3 lowest quality
yt-dlp \
    -f 'worstaudio' \
    --extract-audio \
    --audio-format mp3 \
    --audio-quality 9 \
    -o "audio/%(title)s.%(ext)s" \
    "$1"
