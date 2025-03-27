{
  plugins.which-key = {
    enable = true;
    settings = {
      notify = true;
      plugins = {
        registers = true;
      };
      show_keys = true;
      win = {
        no_overlap = true;
        padding = [
          1
          2
        ];
        title = true;
        title_pos = "center";
        zindex = 1000;
      };
    };
  };
}
