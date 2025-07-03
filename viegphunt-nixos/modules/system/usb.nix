{ var, ... }:{
    services.udisks2.enable = true;
    home-manager.users.${var.user}.services.udiskie = { 
        enable = true;
        automount = true;
        tray = "Auto";
        notify = true;
    };
}