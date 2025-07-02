#!/usr/bin/env bash

wallpapers_dir="$HOME/Pictures/Wallpapers"

selected_wallpaper=$(for a in "$wallpapers_dir"/*; do
    echo -en "$(basename "${a%.*}")\0icon\x1f$a\n"
done | rofi -dmenu -p " ")

image_fullname_path=$(find "$wallpapers_dir" -type f -name "$selected_wallpaper.*" | head -n 1)

swww img "$image_fullname_path" --transition-type any --transition-duration 2

~/.config/viegphunt/wallpaper_effects.sh