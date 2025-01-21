{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../nix/default.nix
    ../../assets/texts/scripts/default.nix
  ];

  custom = {
    # Essentials
    misc.enable = true;
    users.enable = true;
    sound.enable = true; 
    internationalization.enable = true;
    greetd = {
	enable = true;
	# command = "dbus-launch Hyprland && hyprlock";
    };
    getty.enable = true;
    no-powerbutton.enable = false;

    # Userspace
    hypr.enable = true;
    browsers.enable = true;
    gaming.enable = true;

    # Addons
    scripts.enable = true;
  };

  networking.hostName = "junixos"; 

  home-manager = {
    backupFileExtension = "bak";
    users = {
	"julian" = import ./home.nix;
    };
  };
}
