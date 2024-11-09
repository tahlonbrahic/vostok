{
  plugins = {
    illuminate = {
      enable = true;
      underCursor = true;
    };
    lastplace.enable = true;
    notify = {
      enable = true;
      level = "info";
    };
    navic = {
      enable = true;
      settings = {
        highlight = true;
        lsp.autoAttach = true;
      };
    };
    nvim-autopairs = {
      enable = true;
      # TODO: Add lua for nix semi-colon auto pair
    };
    nvim-colorizer.enable = true;   
    nvim-tree = {
      enable = true;
      updateFocusedFile.enable = true;
    };
    specs = {
      enable = true;
    };
    telescope = {
      enable = true;
    };
    todo-comments.enable = true;
    web-devicons.enable = true;
  };
}
