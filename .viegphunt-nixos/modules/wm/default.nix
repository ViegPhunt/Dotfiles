{
    imports = [
        ./hyprland.nix
    ];

    programs.dconf.enable = true;
    services.dbus.enable  = true;
}
