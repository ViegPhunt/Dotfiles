{ pkgs, ... }:{
    environment.systemPackages = with pkgs; [
        vscode
        code-cursor
        sublime4
    ];
}