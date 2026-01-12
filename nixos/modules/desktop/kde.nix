{ config, lib, pkgs, ... }:

{
  # Enable SDDM display manager
  services.displayManager.sddm.enable = true;

  # Enable the KDE Plasma 6 Desktop Environment
  services.desktopManager.plasma6.enable = true;

  # Exclude some default KDE packages
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    plasma-browser-integration
    oxygen
  ];
}
