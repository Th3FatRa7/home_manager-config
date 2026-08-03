{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;

    settings.settings.save_on_toggle = true;
  };

  extraConfigLua = ''
    local harpoon = require("harpoon")

    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add file to Harpoon", silent = true })
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle Harpoon menu", silent = true })
    vim.keymap.set("n", "<C-j>", function() harpoon:list():select(1) end, { desc = "Select Harpoon file 1", silent = true })
    vim.keymap.set("n", "<C-k>", function() harpoon:list():select(2) end, { desc = "Select Harpoon file 2", silent = true })
    vim.keymap.set("n", "<C-l>", function() harpoon:list():select(3) end, { desc = "Select Harpoon file 3", silent = true })
    vim.keymap.set("n", "<C-;>", function() harpoon:list():select(4) end, { desc = "Select Harpoon file 4", silent = true })
  '';
}
