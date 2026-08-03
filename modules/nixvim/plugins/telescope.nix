{
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        options.desc = "Find files";
      };
      "<leader>fg" = {
        action = "git_files";
        options.desc = "Find Git files";
      };
      "<leader>fs" = {
        action = "live_grep";
        options.desc = "Search text";
      };
      "<leader>fh" = {
        action = "help_tags";
        options.desc = "Search help tags";
      };
      "<leader>fb" = {
        action = "current_buffer_fuzzy_find";
        options.desc = "Search current buffer";
      };
    };
  };
}
