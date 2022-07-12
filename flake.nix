{
  description = "NixOS configuration of Yslan";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inptus @ { nixpkgs, home-manager, ... }:
    let
      location = "$HOME/.setup";
      user = "yslan";
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        ${user} = lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/configuration.nix ];
        };
      };
      homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./hosts/home.nix
        ];
      };
    };
}
