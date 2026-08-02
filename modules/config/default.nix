{
  # colorschemes.nightfox = {
  #   enable = true;
  #   flavor = "carbonfox";
  # };
  colorschemes.rose-pine.enable = true;

  # TODO: Add lazy loading
  plugins = {
    lualine.enable = true;
    web-devicons.enable = true;
    neo-tree.enable = true;
    # neo-tree options to set up:
    # don't open neo-tree if no file specified when starting
    # show hidden file
    telescope.enable = true;
    # telescope options:
    # <leader>ff must not respect .gitignore
    render-markdown.enable = true;
    nvim-autopairs.enable = true;
    lazygit.enable = true;
    bufferline.enable = true; # Maybe try barbar instead ?
    lspconfig.enable = true;
    comment.enable = true;
    floaterm.enable = true;
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
    };
    blink-cmp = {
      enable = true;
    };
    # TODO: Make those plugins work and add some settings for them
    # auto-session.enable = true;
    # oil.enable = true;
    # harpoon.enable = true;
    # comment
  };

  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 2;
    scrolloff = 8;
    wrap = false;
    cursorline = true;
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
      action = "<cmd>Neotree toggle float<cr>";
      options.silent = true;
    }

    # Lazygit
    {
      mode = "n";
      key = "<leader>g";
      action = "<cmd>LazyGit<cr>";
    }

    # Save file
    {
      mode = "n";
      key = "<leader>s";
      action = "<cmd>w<cr>";
    }
    {
      mode = "n";
      key = "<leader>S";
      action = "<cmd>wa<cr>";
    }

    # Quit
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>wq<cr>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>Q";
      action = "<cmd>wqa<cr>";
      options.silent = true;
    }

    # Telescope
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<cr>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope git_files<cr>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>fs";
      action = "<cmd>Telescope live_grep<cr>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>Telescope help_tags<cr>";
      options.silent = true;
    }
  ];

  globals = {
    mapleader = " ";
  };

  diagnostic.settings.virtual_text = true;

  lsp = {
    inlayHints.enable = true;
    servers = {
      nil_ls.enable = true;
    };
  };
}
