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

    nixvim.url = "github:nix-community/nixvim";

    nixgl.url = "github:nix-community/nixGL";
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
    nur,
    nixvim,
    nixgl,
    ...
  }: let
    pkgs = import nixpkgs {
      system = "x86_64-linux";
      config.allowUnfree = true;
      overlays = [
        nixgl.overlay
        nur.overlays.default
        (final: prev: {
          tmuxPlugins =
            prev.tmuxPlugins
            // {
              tilish = prev.tmuxPlugins.tilish.overrideAttrs (old: {
                version = "my-test";

                src = prev.fetchFromGitHub {
                  owner = "jabirali";
                  repo = "tmux-tilish";
                  rev = "fb9e418a34f13dbe712815e9ab42692b004bc4aa";
                  hash = "sha256-Ri6x5RIozyUh+FhmW1Z1QEU9CL+OGqMDolbqaLO+Ggg=";
                };
              });
            };
        })
      ];
    };
  in {
    packages."x86_64-linux" = import ./packages.nix {inherit inputs pkgs;};
    homeConfigurations.commander = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      extraSpecialArgs = {inherit inputs;};
      modules = [./home.nix];
    };
  };
}
