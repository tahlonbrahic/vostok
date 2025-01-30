{
  inputs,
  system,
  ...
}: let
  pkgs = import inputs.nixpkgs {inherit system;};
  lib = inputs.nixpkgs.lib;
in {
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
        nil_ls = let
          version = "2e24c9834e3bb5aa2a3701d3713b43a6fb106362";
        in {
          enable = true;
          package = pkgs.nil.overrideAttrs (oldAttrs: rec {
            pname = "nil";
            inherit version;
            src = pkgs.fetchFromGitHub {
              owner = "oxalica";
              repo = "nil";
              rev = version;
              sha256 = "sha256-DCIVdlb81Fct2uwzbtnawLBC/U03U2hqx8trqTJB7WA=";
            };

            cargoDeps = oldAttrs.cargoDeps.overrideAttrs (lib.const {
              name = "${pname}-vendor.tar.gz";
              inherit src;
              outputHash = "sha256-FppdLgciTzF6tBZ+07IEzk5wGinsp1XUE7T18DCGvKg=";
            });
          });
        };
        pyright.enable = true; # Python
        solargraph.enable = true; # Ruby
        taplo.enable = true; # TOML
        #powershell_es.enable = true;
        #powershell_es.package = inputs.fuyuNoNur.packages.${system}.powershell_es;
        yamlls.enable = true;
      };
    };
    lsp-format.enable = true;
    inc-rename.enable = true;
  };
}
