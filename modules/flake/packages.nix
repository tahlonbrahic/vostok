{
  config,
  inputs,
  ...
}: {
  perSystem = {
    system,
    pkgs,
    ...
  }: {
    packages = {
      vostok = inputs.nixvim.legacyPackages.${system}.makeNixvimWithModule {
        inherit pkgs;
        module = config.flake.modules.nixvim;
      };
    };
  };
}
