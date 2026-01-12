{ config, lib, pkgs, ... }:

{
  # OpenOCD udev rules
  services.udev.packages = [ pkgs.openocd ];
}
