{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    mpv
    discord
    nautilus
    gnome-disk-utility
    code-cursor
    alacritty
    libreoffice
    obs-studio
    signal-desktop
    chromium
    tor-browser
    cryptomator
    bitwarden-desktop
    gnucash
    halloy
    wpgtk
    qutebrowser
    godot-mono
    zed-editor
  ];
}
