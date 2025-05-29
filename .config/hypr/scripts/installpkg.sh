#!/usr/bin/env bash
set -euo pipefail

pkgs=(
    # Hyprland & Wayland Environment
    hyprland hyprlock hyprshot swww wlogout grim slurp swaynotificationcenter waybar rofi-wayland rofi-emoji

    # System
    brightnessctl networkmanagerapplet bluez bluez-tools blueman pipewire wireplumber pavucontrol

    # System Utilities and Media
    ghostty nemo-with-extensions cheese loupe celluloid gnome-text-editor obs-studio cava

    # Qt & Display Manager Support
    libsForQt5.sddm libsForQt5.qt5ct kdePackages.qt6ct

    # Input Method
    fcitx5 fcitx5-gtk fcitx5-bamboo libsForQt5.fcitx5-configtool libsForQt5.fcitx5-qt

    # Browsers and Communication
    spotify brave

    # Code Editors and IDEs
    vscode code-cursor sublime4

    # Themes, Icons, Fonts
    apple-cursor whitesur-icon-theme nerd-fonts.jetbrains-mono adw-gtk3 nwg-look

    # Misc
    xdg-desktop-portal-hyprland vips python312Packages.pillow
)

nix profile install ${pkgs[@]/#/nixpkgs#}
