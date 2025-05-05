#!/bin/bash

src_dir="$HOME/.config/wallpapers"
des_dir="$HOME/.cache/swww"

swww img $src_dir/$(ls $src_dir | shuf -n1) --transition-type any --transition-duration 2
rm -rf $des_dir/*.png
vipsthumbnail $(cat $des_dir/eDP-1) -o $des_dir/normal.png
