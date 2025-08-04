{ pkgs, inputs, ... }: {

  services.flatpak.enable = true;
  programs.java = {
    enable = true;
    package = pkgs.jdk17;
  };

  # automount usb
  services.devmon.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;

  programs.direnv.enable = true;
  environment.systemPackages = with pkgs; [
    maven
    bash
    tmux
    git
    gh
    gnumake
    libtool

    ghostscript
    qrcode
    iw

    lazygit
    lazydocker

    p7zip
    libva-utils
    brightnessctl

    powertop

    ollama

    fd

    # PDF Utils
    poppler_utils

    asciinema

    lm_sensors
    usbutils
    pciutils

    tldr
    cht-sh

    gnupg
    ripgrep
    wget
    lf
    file
    unzip
    zip
    yadm
    btop

    himalaya
    inputs.neverest.packages.x86_64-linux.default
    libsecret

    xdg-user-dirs
    imagemagick

    aichat
    bat

  ];
}
