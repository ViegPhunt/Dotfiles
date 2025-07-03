{ pkgs, ... }:{
    i18n.inputMethod.enabled = "fcitx5";
    i18n.inputMethod.fcitx5.addons = with pkgs; [
        fcitx5-gtk
        libsForQt5.fcitx5-qt
        libsForQt5.fcitx5-configtool
        fcitx5-bamboo
    ];

    environment.systemPackages = with pkgs; [
        fcitx5
    ];
}