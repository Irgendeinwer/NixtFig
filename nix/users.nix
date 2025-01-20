{ lib, config, ... }:
{
  options = {
    custom.users.enable = lib.mkEnableOption "users (julian)";
  };
  
  config = lib.mkIf config.custom.users.enable {
    users.users.julian = {
	isNormalUser = true;
	extraGroups = [
	    "wheel"
	    "input"
	    "networkmanager"
	];
    };
  };
}
