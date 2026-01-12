{ config, lib, pkgs, ... }:

{
  # Git configuration
  programs.git.settings = {
    enable = true;
    user.name = "pranz24";
    user.email = "pranjal.tandon@gmail.com";
  };
}
