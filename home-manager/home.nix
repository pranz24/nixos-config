{ config, pkgs, unstable-pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "pranjalt";
  home.homeDirectory = "/home/pranjalt";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # Application Software
    brave
    discord
  	firefox-devedition
    kate
    nerdfonts
	  obs-studio 
	  openocd
	  tailscale
	  wireshark
    helix
    vlc

    # Language Servers
    zls
    libclang
    rust-analyzer
    python312Packages.python-lsp-server

    # Terminal
    unstable-pkgs.ghostty

    # Fish Shell
    fish
    
    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/pranjalt/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };


  # Setup for bash
  #programs.bash = {
  #  enable = false;
  #};

  # Setup for fish
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    plugins = [
      # Enable a plugin (here grc for colorized command output) from nixpkgs
      { name = "grc"; src = pkgs.fishPlugins.grc; }
      { name = "hydro"; src = pkgs.fishPlugins.hydro; }
    ];
  };

  # Setup for Git
  programs.git = {
    enable = true;
    userName = "pranz24";
    userEmail = "pranjal.tandon@gmail.com";
  };

  # Setup for Helix
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
    languages.language = [{
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

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
