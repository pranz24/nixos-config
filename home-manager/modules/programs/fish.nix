{ config, lib, pkgs, ... }:

{
  # Fish shell configuration
  programs.fish = {
    enable = true;

    # Fish plugins
    plugins = [
      {
        name = "done";
        src = pkgs.fishPlugins.done.src;
      }
      {
        name = "fzf-fish";
        src = pkgs.fishPlugins.fzf-fish.src;
      }
      {
        name = "forgit";
        src = pkgs.fishPlugins.forgit.src;
      }
      {
        name = "hydro";
        src = pkgs.fishPlugins.hydro.src;
      }
      {
        name = "grc";
        src = pkgs.fishPlugins.grc.src;
      }
    ];

    # Shell aliases (add your custom aliases here)
    shellAliases = {
      # Example aliases
      # ll = "ls -la";
      # ".." = "cd ..";
    };

    # Shell init commands (runs on shell startup)
    shellInit = ''
      # Add any custom fish shell initialization here
    '';
  };

  # Required packages for fish plugins
  home.packages = with pkgs; [
    fzf
    grc
  ];
}
