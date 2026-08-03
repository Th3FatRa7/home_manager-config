{
  plugins.lspconfig.enable = true;

  diagnostic.settings.virtual_text = true;

  lsp = {
    inlayHints.enable = true;
    servers = {
      nil_ls.enable = true;
    };
  };
}
