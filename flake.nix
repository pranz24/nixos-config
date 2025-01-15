{
  description = "My NixOS/Homemanager Configurations";

  inputs = {
    # NixOS official package source, using the nixos-24.05 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    # NixOS official package source, using the unstable branch here
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    # Home_manager
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }@inputs: 
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    unstable-pkgs = nixpkgs-unstable.legacyPackages.${system};
    allowUnfree = { nixpkgs.config.allowUnfree = true; };
  in {
    # Please replace my-nixos with your hostname
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        ./nixos/configuration.nix
      ];
    };
    homeConfigurations.pranjalt = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [
        allowUnfree
        ./home-manager/home.nix
      ];
      extraSpecialArgs = { inherit unstable-pkgs; };
    };
  };
}
