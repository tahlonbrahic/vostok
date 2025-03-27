{config, ...}: {
  perSystem = _: {
    overlayAttrs = {
      inherit (config.packages) vostok;
    };
  };
}
