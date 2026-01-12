{ config, lib, pkgs, ... }:

{
  # Enable the OpenSSH daemon
  services.openssh.enable = true;

  # Enable GnuPG agent with SSH support
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
}
