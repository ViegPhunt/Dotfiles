{ inputs, ... }:{
    imports = [
        ./code.nix
        ./communication.nix
        ./fonts.nix
        ./hyprland.nix
        ./inputmethod.nix
        ./media.nix
        ./pwndbg.nix
        ./system.nix
        ./terminal.nix
        ./theme.nix
        ./utils.nix
    ];

    nixpkgs.config = {
        permittedInsecurePackages = [];
        allowUnfree = true;
    };
}
