{ config, pkgs, lib, ... }:
{
  options.custom.kitty.enable = lib.mkEnableOption "Kitty terminal + tools";
  config = lib.mkIf config.custom.kitty.enable {
    environment.systemPackages = with pkgs; [
	kitty
	ripgrep
	tree
	bat
	fzf
    ];
  };
}
