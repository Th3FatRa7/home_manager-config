{ config, pkgs, ... }:

{
  imports = [
    ./modules/git.nix
    ./modules/aliases.nix
    ./modules/variables.nix
    ./modules/librewolf.nix
    ./modules/tmux.nix
    ./modules/ghostty.nix
    ./modules/nixvim
  ];

  home.username = "commander";
  home.homeDirectory = "/home/commander";
  home.stateVersion = "26.05";

  home.packages = with pkgs;[

  # Social
  irssi

	# Cybersecurity
	ffuf
	sqlmap
	burpsuite

	# Useful
	fzf
	ripgrep
	lsd
  ];

  programs.home-manager.enable = true;

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [ "flakes" "nix-command" ];
  };
}
