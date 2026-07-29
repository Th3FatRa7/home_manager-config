{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, nur, ... }: {
    homeConfigurations.commander = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        config.allowUnfree = true;
        # TODO: Learn Overlays
        overlays = [
          nur.overlays.default
        ];
      };
      extraSpecialArgs = { inherit inputs; }; # TODO: Do I really need that
      modules = [ ./home.nix ];
    };
  };
}

