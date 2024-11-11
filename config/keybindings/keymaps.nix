{
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
      {
        action = ''          function()
                    require("nvchad.tabufline").next()
                  end'';
        key = "<tab>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Goto the next buffer";
        };
      }
      {
        action = ''          function()
                    require("nvchad.tabufline").prev()
                  end'';
        key = "<S-tab>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Goto the previous buffer";
        };
      }
      {
        action = ''          function()
                    require("nvchad.tabufline").close_buffer()
                  end'';
        key = "<leader>x";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Close this buffer";
        };
      }
      /*
      {
        action = "";
        key = "";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "";
        };
      */
    ];
  };
}
