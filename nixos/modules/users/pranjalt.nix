{ config, lib, pkgs, ... }:

{
  # Define extra groups
  users.extraGroups.plugdev = { };

  # Define user account
  users.users.pranjalt = {
    isNormalUser = true;
    description = "Pranjal Tandon";
    extraGroups = [ "networkmanager" "wheel" "video" "plugdev" "dialout" ];
    shell = pkgs.fish;
    packages = with pkgs; [ ];
  };
}
