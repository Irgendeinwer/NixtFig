{ ... }:
{
  home.username = "julian";
  home.homeDirectory = "/home/julian";

  custom = {
  };

  imports = [ ../../hm/default.nix ];

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
