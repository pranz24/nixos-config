{ config, pkgs, unstable-pkgs, ... }:

{
  imports = [
    # Programs
    ./modules/programs/git.nix
    ./modules/programs/fish.nix
    ./modules/programs/text-editor.nix

    # Applications
    ./modules/applications/browsers.nix
    ./modules/applications/communication-channels.nix
    ./modules/applications/media.nix
    ./modules/applications/dev-tools.nix

    # Themes
    ./modules/themes/fonts.nix
    ./modules/themes/icons.nix
    ./modules/themes/wallpaper.nix
  ];

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
  home.stateVersion = "25.11"; # Please read the comment before changing.

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

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
