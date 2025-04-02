 { config, pkgs, ... }: {
#{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
#    ./mounts.nix
    ./../../modules/core
  ];

  powerManagement.cpuFreqGovernor = "performance";
}
