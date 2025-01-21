{ lib, config, ... }:
{
  options.custom.nh.enable = lib.mkEnableOption "nh tool";
  config = lib.mkIf config.custom.nh.enable {
    programs.nh = {
	enable = true;
	clean.enable = true;
	clean.extraArgs = "--keep-since 8d --keep 8";
	flake = "/home/julian/NixtFig";
    };
  };
}
