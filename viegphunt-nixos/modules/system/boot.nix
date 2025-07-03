{ pkgs, ... }:{
    boot = {
        loader = {
            timeout = 0;
            systemd-boot.enable = true;
            efi.canTouchEfiVariables = true;
        };

        kernelPackages = pkgs.linuxPackages_latest;
        kernelParams = [
            "quiet"
            "udev.log_level=0" 
        ];

        plymouth = {
            enable = true;
            theme  = "bgrt";
        };

        initrd.verbose  = false;
        consoleLogLevel = 0;
    };
}