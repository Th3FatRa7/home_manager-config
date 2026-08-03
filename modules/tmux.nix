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
	plugin = catppuccin;
	extraConfig = ''
	  set -g @catppuccin_window_status_style "rounded"
	'';
      }
    ];
  };
}
