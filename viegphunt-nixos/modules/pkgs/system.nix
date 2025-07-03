{ pkgs, ... }:{
    environment.systemPackages = with pkgs; [
        brightnessctl
        networkmanagerapplet
        inetutils
        bluez
        pipewire
        wireplumber
        pavucontrol
        alsa-utils
        libsForQt5.sddm
        libsForQt5.qt5ct
        kdePackages.qt6ct
    ];
}