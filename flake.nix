{
  description = "My NixOS/Homemanager Configurations";

  inputs = {
    # NixOS official package source, using the nixos-23.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    # Home_manager
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: 
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    allowUnfree = { nixpkgs.config.allowUnfree = true; };
  in {
    # Please replace my-nixos with your hostname
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        ./configuration.nix
      ];
    };
    homeConfigurations.pranjalt = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [
        allowUnfree
        ./home.nix
      ];
    };
  };
}
