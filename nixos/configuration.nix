# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running 'nixos-help').

{ config, pkgs, ... }: {
  imports = [
    # Hardware configuration
    ./hardware-configuration.nix

    # System modules
    ./modules/system/boot.nix
    ./modules/system/kernel.nix
    ./modules/system/locale.nix
    ./modules/system/networking.nix

    # Hardware modules
    ./modules/hardware/audio.nix
    ./modules/hardware/bluetooth.nix
    ./modules/hardware/printing.nix

    # Services
    ./modules/services/ssh.nix
    ./modules/services/tailscale.nix
    ./modules/services/openocd.nix

    # Desktop environment
    ./modules/desktop/kde.nix
    ./modules/desktop/xserver.nix

    # User configuration
    ./modules/users/pranjalt.nix

    # System packages
    ./packages/system.nix
  ];

  # Enable experimental features for flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}
