{ pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    location = "center";
    theme = "~/NixtFig/hm/wofi/gruvbox-material.rasi";
  };
}
