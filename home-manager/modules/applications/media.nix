{ config, lib, pkgs, ... }:

{
  # Media applications
  home.packages = with pkgs; [
    obs-studio
    vlc
  ];
}
