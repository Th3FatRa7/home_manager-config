{
  globals = {
    mapleader = " ";
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>h";
      action = "<C-w>h";
    }
    {
      mode = "n";
      key = "<leader>j";
      action = "<C-w>j";
    }
    {
      mode = "n";
      key = "<leader>k";
      action = "<C-w>k";
    }
    {
      mode = "n";
      key = "<leader>l";
      action = "<C-w>l";
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
  ];
}
