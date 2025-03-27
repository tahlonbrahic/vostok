{config, ...}: {
  perSystem = {system, ...}: {
    apps = {
      default = {
        program = config.flake.packages.${system}.default;
      };
    };
  };
}
