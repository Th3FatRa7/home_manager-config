{ pkgs, ... }:

{
  imports = [
    ./modules/git.nix
    ./modules/aliases.nix
    ./modules/variables.nix
    ./modules/librewolf.nix
    ./modules/tmux.nix
    ./modules/ghostty.nix
    ./modules/kitty.nix
    ./modules/nixvim
  ];

  home.username = "commander";
  home.homeDirectory = "/home/commander";
  home.stateVersion = "26.05";

  home.packages = with pkgs;[
    nixgl.nixGLIntel

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
