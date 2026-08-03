{
  globals = {
    mapleader = " ";
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>h";
      action = "<C-w>h";
      options.desc = "Move to left window";
    }
    {
      mode = "n";
      key = "<leader>j";
      action = "<C-w>j";
      options.desc = "Move to lower window";
    }
    {
      mode = "n";
      key = "<leader>k";
      action = "<C-w>k";
      options.desc = "Move to upper window";
    }
    {
      mode = "n";
      key = "<leader>l";
      action = "<C-w>l";
      options.desc = "Move to right window";
    }

    # Save file
    {
      mode = "n";
      key = "<leader>s";
      action = "<cmd>w<cr>";
      options.desc = "Save file";
    }
    {
      mode = "n";
      key = "<leader>S";
      action = "<cmd>wa<cr>";
      options.desc = "Save all files";
    }

    # Quit
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>wq<cr>";
      options = {
        desc = "Save and quit";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>Q";
      action = "<cmd>wqa<cr>";
      options = {
        desc = "Save all and quit";
        silent = true;
      };
    }
  ];
}
