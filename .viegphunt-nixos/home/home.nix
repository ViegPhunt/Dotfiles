{ var, ... }:{
    imports = [
        ./stylix.nix
    ];

    programs.home-manager.enable = true;

    home = {
        username = var.user;
        homeDirectory = "/home/${var.user}";  
        stateVersion  = "${var.base}";

        sessionVariables = {
            BROWSER  = "brave";
            TERMINAL = "ghostty";
            IMAGE_VIEWER = "loupe";
            VIDEO_PLAYER = "celluloid";
        };

        file = {
            ".config".source = ../../.config;
            ".zshrc".source = ../../.zshrc;
            ".tmux.conf".source = ../../.tmux.conf;
        };
    };
}
