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

        fonts = {
            sansSerif = {
                package = pkgs.adwaita-fonts;
                name = "Adwaita Sans";
            };
            sizes.applications = 12;
        };
    };
}
