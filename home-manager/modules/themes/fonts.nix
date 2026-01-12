{ config, lib, pkgs, ... }:

{
  # Font packages
  home.packages = with pkgs; [
    nerd-fonts.daddy-time-mono
  ];
}
