{
  description = "冬のネオヴィム";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
    fuyuNoKosei = "github:TahlonBrahic/fuyu-no-kosei";
  };

  outputs = {
    nixvim,
    flake-parts,
    fuyuNoKosei,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      imports = [
        inputs.flake-parts.flakeModules.easyOverlay
      ];

      perSystem = {
        system,
        config,
        ...
      }: let
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          inherit (fuyuNoKosei.pkgs.${system}) pkgs;
          module = import ./config;
          extraSpecialArgs = {};
        };
        fuyuvim = nixvim'.makeNixvimWithModule nixvimModule;
      in {
        checks = {
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };

        packages = {
          inherit fuyuvim;
          default = fuyuvim;
        };

        overlayAttrs = {
          inherit (config.packages) fuyuvim;
        };
      };
    };
}
