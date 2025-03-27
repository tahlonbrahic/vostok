_: {
  config = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
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
      {
        action = "<cmd>WhichKey <CR>";
        key = "<leader>wk";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "WhickKey all keymaps";
        };
      }
      {
        action = ''function() vim.cmd(" WhichKey " .. vim.fn.input " WhichKey: ") end'';
        key = "<leader>WK";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Query WhichKey";
        };
      }
      {
        action = "<cmd>NvimTreeToggle<CR>";
        key = "<C-n>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Toggle the NvimTree window";
        };
      }
      {
        action = "<cmd>NvimTreeFocus<CR>";
        key = "<leader>e";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Toggle focus to the NvimTree window";
        };
      }
      {
        action = "<cmd>enew<CR>";
        key = "<leader>b";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Open a new buffer";
        };
      }
    ];
  };
}
