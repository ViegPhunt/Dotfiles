#!/bin/bash

wallpaper_src_dir="$HOME/.config/wallpaper"
wallpaper_des_dir="$HOME/.cache/swww"

swww img $wallpaper_src_dir/$(ls $wallpaper_src_dir | shuf -n1) --transition-type any --transition-duration 2
rm -rf $wallpaper_des_dir/*.png
vipsthumbnail $(cat $wallpaper_des_dir/eDP-1) -o $wallpaper_des_dir/normal.png
