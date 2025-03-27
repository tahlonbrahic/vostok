{inputs, ...}: {
  config = {
    flake = {
      lib = {
        loadModulesRecursively = let
          inherit (inputs) eris nixpkgs;
          inherit (nixpkgs) lib;
          view = eris.lib.load {
            src = ../nixvim;
            loader = eris.lib.loaders.path;
          };
        in
          lib.pipe view [
            (
              lib.attrsets.mapAttrsRecursiveCond
              (as: !(builtins.isPath as))
              (_: v: {
                module = v;
              })
            )
            (lib.attrsets.collect
              (x: x ? module))
            (builtins.map
              (x: builtins.attrValues x))
            lib.lists.flatten
          ];
      };
    };
  };
}
