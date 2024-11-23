{ mkShell
, zephyr
, callPackage
, cmake
, ninja
, lib
, pkgs
}:

mkShell {
  packages = [
    (zephyr.sdk.override {
      targets = [
        "arm-zephyr-eabi"
      ];
    })
    zephyr.pythonEnv
    zephyr.hosttools-nix
    cmake
    ninja
    pkgs.just
    pkgs.git
  ];
}