{ config, lib, pkgs, ...}:
{
  options.custom.scripts.enable = lib.mkEnableOption "scripts";
  
  config = lib.mkIf config.custom.scripts.enable {
    environment.systemPackages = [
	(import ./hello.nix { inherit pkgs; })
    ];
  };
}
