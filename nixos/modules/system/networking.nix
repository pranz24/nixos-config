{ config, lib, pkgs, ... }:

{
  # Hostname configuration
  networking.hostName = "nixos";

  # Enable NetworkManager for network management
  networking.networkmanager.enable = true;

  # Firewall configuration (currently disabled, uncomment to configure)
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # networking.firewall.enable = false;
}
