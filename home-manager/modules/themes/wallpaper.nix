{ config, lib, pkgs, ... }:

{
  # Wallpaper configuration
  # Place your wallpaper files in the wallpapers/ directory at the root of your config

  # Copy wallpapers to the standard KDE wallpaper location
  # This makes them available in the KDE wallpaper picker

  # Uncomment and modify the line below once you add a wallpaper to the wallpapers/ directory:
  # home.file.".local/share/wallpapers/laptop/contents/images/1920x1080.jpg".source =
  #   ../../../wallpapers/your-wallpaper.jpg;

  # You can also create a symlink to make it easier to reference:
  # home.file.".local/share/wallpapers/current-wallpaper.jpg".source =
  #   ../../../wallpapers/your-wallpaper.jpg;

  # For multiple resolutions, you can add multiple files:
  # home.file.".local/share/wallpapers/laptop/contents/images/2560x1440.jpg".source =
  #   ../../../wallpapers/your-wallpaper-2k.jpg;

  # Note: After adding wallpapers, they will appear in:
  # System Settings > Appearance > Wallpaper > Get New Wallpapers (look for locally installed)
  # Or right-click on desktop > Configure Desktop and Wallpaper
}
