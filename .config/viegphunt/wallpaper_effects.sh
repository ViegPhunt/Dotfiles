#!/usr/bin/env bash

current_wallpaper_path=$(swww query | awk -F'image: ' '/image:/ {print $2}')
destination_wallpaper_dir="$HOME/.cache/swww"
mkdir -p "$destination_wallpaper_dir"

rm -f "$destination_wallpaper_dir/normal.png"
vipsthumbnail "$current_wallpaper_path" -o "$destination_wallpaper_dir/normal.png"