{ pkgs, lib, config, ... }:
{
  options.custom.hypr.enable = lib.mkEnableOption "Hyprland stuff"; # also used for HM
  config = lib.mkIf config.custom.hypr.enable {
    environment.systemPackages = with pkgs; [
	hyprshot
	wl-clipboard	
    ];

    programs = {
	hyprland.enable = true;
	hyprlock.enable = true;
    };
  };
}
