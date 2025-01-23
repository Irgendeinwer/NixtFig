{ lib, config, ... }:
{
  options.custom.hyprpaper.enable = lib.mkEnableOption "Hyprpaper wallpaper deamon";
  config = lib.mkIf config.custom.hyprpaper.enable {
    services.hyprpaper = {
	enable = true;
	settings = {
	    splash = true;
	    splash_offset = 2.0;
	    # splash_color = "55ffffff";
	    ipc = true;

	    preload = [ "${config.stylix.image}" ];

	    wallpaper = [ "${config.stylix.image}" ];
	};
    };
  };
}
