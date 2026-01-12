{ config, lib, pkgs, ... }:

{
  # Text editors
  home.packages = with pkgs; [
    kdePackages.kate
  ];

  # Helix editor configuration
  programs.helix = {
    enable = true;
    settings = {
      theme = "noctis";
      editor.cursor-shape = {
        normal = "block";
        insert = "bar";
        select = "underline";
      };
    };
    languages.language = [
      {
        name = "nix";
        auto-format = true;
        indent = { tab-width = 2; unit = "  "; };
      }
      {
        name = "rust";
        auto-format = true;
        indent = { tab-width = 4; unit = "    "; };
        language-servers = [ "rust-analyzer" ];
      }
      {
        name = "c";
        auto-format = true;
        indent = { tab-width = 2; unit = "    "; };
        language-servers = [ "clangd" ];
      }
      {
        name = "python";
        auto-format = true;
        indent = { tab-width = 4; unit = "   "; };
        language-servers = [ "pylsp" ];
      }
      {
        name = "zig";
        auto-format = true;
        indent = { tab-width = 2; unit = "  "; };
        language-servers = [ "zls" ];
      }
    ];
  };
}
