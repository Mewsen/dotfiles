{ config, pkgs, stylix, ... }:

{
  home.username = "michael";
  home.homeDirectory = "/home/michael";
  home.stateVersion = "24.05";
  home.packages = [ ];
  home.file = { };

  home.sessionVariables = { };

  programs.home-manager.enable = true;

  stylix.enable = true;

  stylix.base16Scheme =
    "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";

  stylix.polarity = "dark";

  stylix.targets.alacritty.enable = true;
  stylix.targets.kde.enable = false;

  stylix.image = ./wallpaper.png;

  stylix.fonts = {
    sizes = {
      applications = 10;
      terminal = 14;
      desktop = 10;
      popups = 10;
    };
    serif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Serif";
    };

    sansSerif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans";
    };

    monospace = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans Mono";
    };

    emoji = {
      package = pkgs.noto-fonts-emoji;
      name = "Noto Color Emoji";
    };
  };
}
