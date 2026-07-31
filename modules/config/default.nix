{
  colorschemes.catppuccin.enable = true;

  # TODO: Add lazy loading
  plugins = {
    lualine.enable = true;
    web-devicons.enable = true;
    neo-tree.enable = true;
    telescope.enable = true;
    render-markdown.enable = true;

    # TODO: Make those plugins work and add some settings for them
    # auto-session.enable = true;
    # oil.enable = true;
  };

  opts = {
    number = true;
    relativenumber = true;

    shiftwidth = 2;
  };

  keymaps = [
  # The legend says the neovimer switches window fast
  {
    mode = "n";
    key = "<C-h>";
    action = "<C-w>h";
  }
  {
    mode = "n";
    key = "<C-j>";
    action = "<C-w>j";
  }
  {
    mode = "n";
    key = "<C-k>";
    action = "<C-w>k";
  }
  {
    mode = "n";
    key = "<C-l>";
    action = "<C-w>l";
  }

  # File explorer
  {
    mode = "n";
    key = "<leader>e";
    action = ":Neotree toggle float<CR>";
    options.silent = true;
  }

  # Write
  {
    mode = "n";
    key = "<leader>w";
    action = ":w<CR>";
  }
  {
    mode = "n";
    key = "<leader>W"; # TODO: Remove this if I don't end up using it
    action = ":wa<CR>";
  }

  # Quit
  {
    mode = "n";
    key = "<leader>q";
    action = ":wq<CR>";
  }
  {
    mode = "n";
    key = "<leader>Q";
    action = ":wqa<CR>";
  }

  # Telescope
  {
    mode = "n";
    key = "<leader>ff";
    action = ":Telescope find_files<CR>";
    options.silent = true;
  }
  {
    mode = "n";
    key = "<leader>fg";
    action = ":Telescope git_files<CR>";
    options.silent = true;
  }
  {
    mode = "n";
    key = "<leader>fs";
    action = ":Telescope live_grep<CR>";
    options.silent = true;
  }
  {
    mode = "n";
    key = "<leader>fh";
    action = ":Telescope help_tags<CR>";
    options.silent = true;
  }
  ];

  globals = {
    mapleader = " ";
  };
}
