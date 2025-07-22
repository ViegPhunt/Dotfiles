#!/usr/bin/env bash

wallpapers_dir="$HOME/Pictures/Wallpapers"

random_wallpaper=$(find "$wallpapers_dir" -maxdepth 1 -type f | shuf -n 1)

swww img "$random_wallpaper" --transition-type any --transition-duration 2

~/.config/viegphunt/wallpaper_effects.sh