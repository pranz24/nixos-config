{ config, lib, pkgs, ... }:

{
  # Kernel configuration
  boot.kernelPackages = pkgs.linuxPackages_zen;
}
