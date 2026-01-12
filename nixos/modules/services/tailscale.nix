{ config, lib, pkgs, ... }:

{
  # Enable Tailscale VPN
  services.tailscale.enable = true;
}
