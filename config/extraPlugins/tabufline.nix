{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "tabufline";
      src = pkgs.fetchFromGitHub {
        owner = "NvChad";
        repo = "https://github.com/NvChad/ui.git";
        hash = "";
      };
    })
  ];
}
