{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../nix/default.nix
    ../../assets/texts/scripts/default.nix
  ];

  custom = {

  };

  networking.hostName = "junixbook"; 

  home-manager = {
    backupFileExtension = "bak";
    users = {
	"julian" = import ./home.nix;
    };
  };

  system.stateVersion = "24.05"; # Did you read the comment?
}
