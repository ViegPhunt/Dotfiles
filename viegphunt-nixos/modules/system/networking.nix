{ var, ... }:{
    networking = {
        hostName = "${var.host}";
        networkmanager.enable = true;
    };

    # networking.firewall = {
    #     enable = false;
    #     allowedTCPPorts = [];
    #     allowedUDPPortRanges = [];
    # };
}