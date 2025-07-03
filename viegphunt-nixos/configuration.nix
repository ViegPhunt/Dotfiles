{ var, inputs, ... }: {
    imports = [
        inputs.home-manager.nixosModules.default

        ./modules
    ];

    home-manager = {
        extraSpecialArgs = {
            inherit var;
            inherit inputs; 
        };
        backupFileExtension = "bak";
    };

    documentation.nixos.enable = false;
    system.stateVersion = "${var.base}";
}
