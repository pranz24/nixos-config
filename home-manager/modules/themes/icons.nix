{ config, lib, pkgs, ... }:

{
  # Icon theme packages
  home.packages = with pkgs; [
    colloid-icon-theme
  ];
}
