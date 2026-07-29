{
  programs.tmux = {
    enable = true;
    prefix = "C-a";
    keyMode = "vi";
    baseIndex = 1;
    clock24 = true;
    mouse = true;
    disableConfirmationPrompt = true;
    extraConfig = ''
     set -g status-bg black
     set -g status-fg white
    '';
  };
}
