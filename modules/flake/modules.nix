{
  config,
  inputs,
  ...
}: {
  flake = {
    modules = {
      nixvim =
        config.flake.lib.loadModulesRecursively
        {
          inherit inputs;
          src = ../nixvim;
        };
    };
  };
}
