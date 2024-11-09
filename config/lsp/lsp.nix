{
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
        nil_ls.enable = true; # Nix
        pyright.enable = true; # Python
        solargraph.enable = true; # Ruby
        taplo.enable = true; # TOML
        ts_ls.enable = true;
        html.enable = true; 
        htmx.enable = true;
        powershell_es.enable = true; 
        yamlls.enable = true; 
      };
    };
  };
}
