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
    sound.enable = true;
    users.enable = true;

    # Userspace
    
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
