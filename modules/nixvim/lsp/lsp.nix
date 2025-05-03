{
  pkgs,
  lib,
  ...
}: {
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        cssls.enable = true;
        dockerls.enable = true;
        gopls.enable = true;
        html.enable = true;
        htmx.enable = true;
        jsonls.enable = true;
        lua_ls.enable = true;
        marksman.enable = true; # Markdown
        nil_ls.enable = true;
        pyright.enable = true; # Python
        solargraph.enable = true; # Ruby
        taplo.enable = true; # TOML
        yamlls.enable = true;
      };
    };
    lsp-format.enable = true;
    inc-rename.enable = true;
  };
}
