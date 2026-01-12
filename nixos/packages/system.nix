{ config, lib, pkgs, ... }:

{
  # System-wide packages
  environment.systemPackages = with pkgs; [
    # System utilities
    btop
    curl
    gparted
    tcpdump
    unzip
    vim
    wget

    # Build tools
    cmake
    gdb
    git
    glibc
    gnumake

    # Media tools
    ffmpeg
  ];

  # Enable Fish as the default shell
  programs.fish.enable = true;
}
