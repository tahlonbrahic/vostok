{config, ...}: {
  perSystem = _: {
    apps = {
      default = {
        program = config.packages.default;
      };
    };
  };
}
