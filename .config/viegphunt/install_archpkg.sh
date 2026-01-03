#!/usr/bin/env bash

pacman_packages=(
    # Hyprland & Wayland Environment
    hyprland hyprlock swww grim slurp swaync waybar rofi rofi-emoji yad hyprshot xdg-desktop-portal-hyprland xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gtk

    # System
    brightnessctl network-manager-applet bluez bluez-utils blueman pipewire wireplumber pavucontrol
    
    # System Utilities and Media
    ghostty nemo gvfs cheese loupe celluloid gnome-text-editor evince obs-studio ffmpeg cava
    
    # Qt & Display Manager Support
    sddm qt5ct qt6ct qt5-wayland qt6-wayland

    # Input Method
    fcitx5 fcitx5-gtk fcitx5-qt fcitx5-configtool fcitx5-bamboo
    
    # Misc
    ttf-jetbrains-mono-nerd noto-fonts nwg-look adw-gtk-theme kvantum-qt5 libvips libheif openslide poppler-glib cliphist gnome-characters keepass
)

aur_packages=(
    # Hyprland & Wayland Environment
    wlogout

    # System Utilities and Media

    # Communication
    spotify brave-bin zen-browser-bin

    # Code Editors and IDEs
    visual-studio-code-bin sublime-text-4
        
    # Communication
    vesktop

    # Misc
    ttf-segoe-ui-variable sddm-astronaut-theme apple_cursor whitesur-icon-theme tint
)

sudo pacman -S --noconfirm "${pacman_packages[@]}"
yay -S --noconfirm "${aur_packages[@]}"
