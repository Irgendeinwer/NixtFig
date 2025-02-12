{ lib, config, pkgs, ... }:
{
  options.custom.gaming.enable = lib.mkEnableOption "Gaming support";
  config = lib.mkIf config.custom.gaming.enable {
    programs = {
	steam.enable = true;
	steam.gamescopeSession.enable = true;
	gamemode.enable = true;
    };

    environment.systemPackages = with pkgs; [
	itch
	lutris
	heroic
	prismlauncher
	r2modman

	protonup

	ddnet 		# often broken with wayland
	osu-lazer-bin
	mindustry
	superTux
	superTuxKart
    ];

    environment.sessionVariables = {
	STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
    };

    hardware.graphics = {
      enable = true;
      enable32Bit = true;
    };
  };
}
