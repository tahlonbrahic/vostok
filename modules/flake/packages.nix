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
    packages = rec {
      vostok = inputs.nixvim.legacyPackages.${system}.makeNixvimWithModule {
        inherit pkgs;
        module = config.flake.lib.loadModulesRecursively;
      };
      default = vostok;
    };
  };
}
