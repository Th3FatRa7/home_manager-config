{
  imports = [
    ./telescope.nix
    ./harpoon.nix
    ./oil.nix
    ./comment.nix
    ./conform.nix
    ./persisted.nix
    ./treesitter.nix
  ];

  plugins = {
    lualine.enable = true;
    web-devicons.enable = true;
    which-key.enable = true;
    render-markdown.enable = true;
    nvim-autopairs.enable = true;
  };
}
