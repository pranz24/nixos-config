{ config, lib, pkgs, ... }:

{
  # Enable Bluetooth
  hardware.bluetooth.enable = true;

  # Workaround until this hits unstable:
  # https://github.com/NixOS/nixpkgs/issues/113628
  systemd.services.bluetooth.serviceConfig.ExecStart = [
    ""
    "${pkgs.bluez}/libexec/bluetooth/bluetoothd -f /etc/bluetooth/main.conf"
  ];

  # Enable Blueman for Bluetooth management
  services.blueman.enable = true;
}
