{
  imports = [
    ./telescope.nix
    ./harpoon.nix
    ./oil.nix
    ./comment.nix
    ./conform.nix
    ./treesitter.nix
  ];

  plugins = {
    lualine.enable = true;
    web-devicons.enable = true;
    render-markdown.enable = true;
    nvim-autopairs.enable = true;
  };
}
