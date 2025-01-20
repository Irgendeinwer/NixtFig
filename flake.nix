{
  description = "NixOS config flake.nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    home-manager = {
	url = "github:nix-community/home-manager";
	inputs.nixpkgs.follows = "nixpkgs";
    };
    
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
  };

  outputs = {
    self,
    nixpkgs,
    ... 
  }@inputs:
  {
    nixosConfigurations."junixos" = nixpkgs.lib.nixosSystem {
	specialArgs = {inherit inputs;};
	modules = [
	    ./hosts/junixos/configuration.nix
	    
	    inputs.home-manager.nixosModules.default
	    {
		home-manager.useGlobalPkgs = true;
            	home-manager.useUserPackages = true;
            }
	];
    };

    nixosConfigurations."junixbook" = nixpkgs.lib.nixosSystem {
	specialArgs = {inherit inputs;};
	modules = [
	    ./hosts/junixbook/configuration.nix

	    inputs.home-manager.nixosModules.default
	    {
		home-manager.useGlobalPkgs = true;
		home-manager.useUserPackages = true;
	    }
	];
    };
  };
}
