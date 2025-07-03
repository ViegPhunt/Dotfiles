{ pkgs, ... }:{
    stylix = {
        enable = true;
        polarity = "dark";

        targets.gtk.enable = true;

        cursor = {
            package = pkgs.apple-cursor;
            name = "macOS";
            size = 24;
        };

        iconTheme = {
            package = pkgs.whitesur-icon-theme;
            name = "WhiteSur-dark";
        };

        fonts = {
            sansSerif = {
                package = pkgs.adwaita-fonts;
                name = "Adwaita Sans";
            };
            sizes.applications = 12;
        };
    };
}
