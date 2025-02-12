{ pkgs, config, lib, ... }:
{
  options.custom.stylix.enable = lib.mkEnableOption "the stylix theming suite";
  config = lib.mkIf config.custom.stylix.enable {
    stylix = { 
	enable = true;

	base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-dark-hard.yaml"; 
	image = ../assets/images/wallpapers/current.png;

	# I want to use Hyprcursor!! I'm cooler than this xshit
	# cursor = {
	#    package = pkgs.volantes-cursors;
	#    name = "volantes_cursors";
	#    size = 32;
	# };

	fonts = {
	    monospace = {
		package = pkgs.nerd-fonts.fira-code;
		name = "FiraCodeNerdFontMono";
	    };
	    sansSerif = {
		package = pkgs.nerd-fonts.fira-code;
		name = "FiraCodeNerdFont";
	    };
	    serif = {
		package = pkgs.quicksand;
		name = "Quicksand";
	    };
	};
    };
  };
}
