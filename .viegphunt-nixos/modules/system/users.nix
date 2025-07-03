{ var, pkgs, ... }:{
    nix.settings.trusted-users = [
        "root"
        "@wheel"
    ];

    programs.zsh.enable = true;
    users.users.${var.user} = {
        isNormalUser = true;
        shell = pkgs.zsh;
        extraGroups = [ 
            "networkmanager"
            "media"
            "wheel"
            "audio"
            "video"
            "input"
        ];
    };

    home-manager.users."${var.user}" = import ../../home/home.nix;
}
