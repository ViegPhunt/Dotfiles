{ pkgs, ... }:{
    environment.systemPackages = with pkgs; [
        nwg-look
        adw-gtk3
        apple-cursor
        whitesur-icon-theme
        tint
    ];
}