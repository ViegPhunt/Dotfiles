{
    inputs = {
        nixpkgs.url = "nixpkgs/nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = inputs:
    let
        system = "x86_64-linux";

        baseUser = {
            user = "viet";
            base = "25.05";
        };

        commonModules = [
            ./configuration.nix
            inputs.home-manager.nixosModules.default
            inputs.stylix.nixosModules.stylix
        ];
    in
    {
        nixosConfigurations = {
            Viet-ThinkPad = inputs.nixpkgs.lib.nixosSystem {
                inherit system;
                specialArgs = {
                    inherit inputs;
                    var = baseUser // {
                        host = "Viet-ThinkPad";
                    };
                };
                modules = commonModules;
            };

            Viet-Legion = inputs.nixpkgs.lib.nixosSystem {
                inherit system;
                specialArgs = {
                    inherit inputs;
                    var = baseUser // {
                        host = "Viet-Legion";
                    };
                };
                modules = commonModules;
            };
        };
    };
}
