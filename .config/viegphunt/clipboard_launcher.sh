#!/usr/bin/env bash

if pidof rofi > /dev/null; then
    pkill rofi
fi

cliphist list | rofi -dmenu -p "Clipboard" | cliphist decode | wl-copy
