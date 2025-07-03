{ pkgs, ... }:{
    environment.systemPackages = with pkgs; [
        obs-studio
        cava
    ];
}