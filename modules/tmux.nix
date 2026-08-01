{ pkgs, config, ... }: {
  programs.tmux = {
    enable = true;
    prefix = "C-a";
    keyMode = "vi";
    baseIndex = 1;
    clock24 = true;
    mouse = true;
    escapeTime = 0;
    terminal = "screen-256color";
    disableConfirmationPrompt = true;
    extraConfig = ''
     set -g status-bg black
     set -g status-fg white
    '';
    plugins = with pkgs.tmuxPlugins; [
      # TODO: make those 2 plugins work
      resurrect
      continuum
      {
        plugin = tilish;
        # TODO: nixpkgs uses and old commit of tilish that doesn't include the feature I want. I need to fix that
        extraConfig = ''
          set -g @tilish-default 'main-vertical'
          set -g @tilish-remap 'Q=q'
          set -g @tilish-project '${config.home.homeDirectory}/Projects'
        '';
      }
      {
	# Make my custom theme or find a way to remove the seconds from the time and make the overall theme darker
        plugin = power-theme;
        extraConfig = ''
          set -g @tmux_power_theme 'snow'
        '';
      }
    ];
  };
}
