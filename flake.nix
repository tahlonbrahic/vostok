{
  description = "An easy-to-use yet deceivingly complex NixVim configuration.";

  outputs = {flake-parts, ...} @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;}
    (
      {
        config,
        self,
        ...
      }: let
        flakeModules = {
          apps = import ./modules/flake/apps.nix {inherit config self;};
          # lib = import ./modules/flake/lib.nix {inherit inputs;};
          modules = import ./modules/flake/modules.nix {inherit config self inputs;};
          overlayAttrs = import ./modules/flake/overlayAttrs.nix {inherit config;};
          partitions = import ./modules/flake/partitions/partitions.nix;
          packages = import ./modules/flake/packages.nix;
          systems = import ./modules/flake/systems.nix;
        };
      in {
        imports = [
          flake-parts.flakeModules.easyOverlay
          flake-parts.flakeModules.modules
          flake-parts.flakeModules.partitions
          flakeModules.apps
          # flakeModules.lib
          flakeModules.modules
          flakeModules.overlayAttrs
          flakeModules.packages
          flakeModules.partitions
          flakeModules.systems
        ];
      }
    );

  inputs = {
    eris = {
	  url = "github:tahlonbrahic/eris";
	};
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
    };
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
    };
  };
}
