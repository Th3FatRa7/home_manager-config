{ lib, ... }: {
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;

    settings.settings.save_on_toggle = true;
  };

  keymaps = lib.mapAttrsToList
    (key: action: {
      mode = "n";
      inherit key;
      inherit action;
      options.silent = true;
    }) {
      "<leader>a" = "function() require'harpoon.mark'.add_files() end";
      "<C-e>" = "function() require'harpoon.ui'.toggle_quick_menu() end";
      "<C-j>" = "function() require'harpoon.ui'.nav_file(1) end";
      "<C-k>" = "function() require'harpoon.ui'.nav_file(2) end";
      "<C-l>" = "function() require'harpoon.ui'.nav_file(3) end";
      "<C-;>" = "function() require'harpoon.ui'.nav_file(4) end";
    };
}
