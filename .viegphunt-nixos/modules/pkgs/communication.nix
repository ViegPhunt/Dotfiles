{ pkgs, ... }:{
    environment.systemPackages = with pkgs; [
        brave
        discord
        spotify
    ];
}