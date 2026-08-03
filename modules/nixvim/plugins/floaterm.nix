{
  plugins.floaterm.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>t";
      action = "<cmd>FloatermToggle<cr>";
      options.desc = "Toggle floating terminal";
    }
  ];
}
