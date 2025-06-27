#!/usr/bin/env bash

pacman_packages=(
    # Hyprland & Wayland Environment
    hyprland hyprlock swww grim slurp swaync waybar rofi rofi-emoji

    # System
    brightnessctl network-manager-applet bluez bluez-utils blueman pipewire wireplumber pavucontrol
    
    # System Utilities and Media
    ghostty nemo cheese loupe celluloid gnome-text-editor obs-studio
    
    # Qt & Display Manager Support
    sddm qt5ct qt6ct

    # Input Method
    fcitx5 fcitx5-gtk fcitx5-qt fcitx5-configtool fcitx5-bamboo
    
    # Communication
    discord
    
    # Misc
    nwg-look adw-gtk-theme libvips cliphist
)

aur_packages=(
    # Hyprland & Wayland Environment
    hyprshot wlogout xdg-desktop-portal-hyprland

    # System Utilities and Media
    cava

    # Communication
    spotify brave-bin zen-browser-bin

    # Code Editors and IDEs
    visual-studio-code-bin cursor-bin sublime-text-4

    # Misc
    sddm-sugar-candy-git apple_cursor whitesur-icon-theme ttf-jetbrains-mono-nerd
)

sudo pacman -S --noconfirm "${pacman_packages[@]}"
yay -S --noconfirm "${aur_packages[@]}"
