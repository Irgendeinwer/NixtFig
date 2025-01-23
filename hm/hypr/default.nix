{ lib, config, ... }:
{
  config = lib.mkIf config.custom.hypr.enable {
    imports = [
	./hyprlock.nix
    ];
  };
}
