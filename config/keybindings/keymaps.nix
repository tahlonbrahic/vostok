{
  config.keymaps = [
    # NvimTree
    {
      action = "<cmd>NvimTreeFindFileToggle<CR>";
      key = "<leader>e";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "NvimTree";
      };
    }
  ];
}
