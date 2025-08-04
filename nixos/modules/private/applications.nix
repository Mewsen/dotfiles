{ pkgs, ... }: {

    services.emacs = {
        enable = true;
        package = pkgs.emacs-git;
    };

  environment.systemPackages = with pkgs; [
    mpv
    nautilus
    gnome-disk-utility
    ghostty
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
    nix-search-cli
    keepassxc
    ausweisapp
  ];
}
