# Wallpapers

Place your laptop wallpapers in this directory.

## Usage

1. Add your wallpaper image files (jpg, png, etc.) to this directory
2. Edit `home-manager/modules/themes/wallpaper.nix` to reference your wallpaper
3. Run `home-manager switch --flake .#pranjalt` to apply

## Example

If you add a file `laptop-wallpaper.jpg` to this directory, uncomment and update this line in `wallpaper.nix`:

```nix
home.file.".local/share/wallpapers/current-wallpaper.jpg".source =
  ../../../wallpapers/laptop-wallpaper.jpg;
```

## For KDE Plasma

Your wallpapers will be copied to `~/.local/share/wallpapers/` and will be available in:
- Right-click desktop → Configure Desktop and Wallpaper
- System Settings → Appearance → Wallpaper

## Multiple Displays or Resolutions

You can add multiple wallpapers for different resolutions:

```nix
home.file.".local/share/wallpapers/laptop/contents/images/1920x1080.jpg".source =
  ../../../wallpapers/laptop-1080p.jpg;
home.file.".local/share/wallpapers/laptop/contents/images/2560x1440.jpg".source =
  ../../../wallpapers/laptop-2k.jpg;
```
