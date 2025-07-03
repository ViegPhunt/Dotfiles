{ pkgs, ... }:{
    environment.systemPackages = with pkgs; [
        ghostty
        nemo
        swww
        swaynotificationcenter
        waybar
        rofi-wayland
        rofi-emoji
        wlogout
        grim
        slurp
        cheese
        loupe
        celluloid
        gnome-text-editor
        vips
        cliphist
    ];
}