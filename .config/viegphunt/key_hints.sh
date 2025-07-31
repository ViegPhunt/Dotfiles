#!/usr/bin/env bash

if pidof yad > /dev/null; then
    pkill yad
fi

yad --center --title="Keybinding Hints" --no-buttons --list \
    --column=Key: --column="" --column=Description: \
    --timeout-indicator=bottom \
"  =   "          "        "  "SUPER KEY (Windows Key Button)" \
"" "" "" \
"  H"              "        "  "Show keybinding hints" \
"  Space"          "        "  "Open terminal" \
"  E"              "        "  "Open file manager" \
"  B"              "        "  "Open browser" \
"" "" "" \
"  Shift Ctrl Esc" "        "  "Exit Hyprland" \
"  Q"              "        "  "Close active window" \
"  Shift Q"        "        "  "Kill active window by PID" \
"" "" "" \
"  F"              "        "  "Toggle floating" \
"  P"              "        "  "Toggle pseudo (dwindle)" \
"  J"              "        "  "Toggle split (dwindle)" \
"" "" "" \
"  L"              "        "  "Lock screen" \
"ALT Space"         "        "  "App launcher" \
"  ."              "        "  "Emoji selector" \
"  V"              "        "  "Clipboard manager" \
"  W"              "        "  "Choose wallpaper" \
"  Shift W"        "        "  "Random wallpaper" \
"  Shift S"        "        "  "Screenshot (region)" \
"" "" "" \
"  [1 -> 0]"       "        "  "Switch workspace 1-10" \
"  Shift [1 -> 0]" "        "  "Move window to workspace 1-10" \
"" "" "" \
"More Keybinding"   "        "  "$HOME/.config/hypr/conf/keybinding.conf"
