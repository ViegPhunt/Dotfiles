{ pkgs, ... }:{
    stylix = {
        enable = true;
        autoEnable = false;
        polarity = "dark";

        cursor = {
            package = pkgs.apple-cursor;
            name = "macOS";
            size = 24;
        };

        gtk = {
            theme = {
                package = pkgs.adw-gtk3;
                name = "adw-gtk3-dark";
            };
            iconTheme = {
                package = pkgs.whitesur-icon-theme;
                name = "WhiteSur-dark";
            };
        };

        fonts = {
            sansSerif = {
                package = pkgs.adwaita-fonts;
                name = "Adwaita Sans";
            };
            sizes.applications = 12;
        };
    };

    gtk.enable = true;
}
