{ pkgs, ... }:{
    environment.systemPackages = with pkgs; [
        hyprland
        hyprlock
        hyprshot
        xdg-desktop-portal-hyprland
    ];
}