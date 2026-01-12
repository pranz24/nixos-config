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

    # Fish Plugins
    # Fish Plugins
    fishPlugins.done
    fishPlugins.fzf-fish
    fishPlugins.forgit
    fishPlugins.hydro
    fzf
    fishPlugins.grc
    grc
  ];

  # Enable Fish as the default shell
  programs.fish.enable = true;
}
