{ pkgs, ... }: {

  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [ xdg-desktop-portal-hyprland ];
    };
    mime.enable = true;
  };

  programs.hyprland.enable = true;
  programs.waybar.enable = true;

  environment.systemPackages = with pkgs; [
    hyprland

    hyprpicker
    hyprcursor
    hypridle
    hyprlock
    hyprpaper
    hyprpolkitagent

    # Audio
    pavucontrol

    # Notifications
    libnotify
    mako

    # Screenshots
    grim
    slurp

    # runner
    wofi

    wl-clipboard

    # wayland events
    wev
  ];
}
