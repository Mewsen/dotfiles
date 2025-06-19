{ pkgs, ... }: {

  fonts.fontconfig.allowBitmaps = true;

  fonts.packages = with pkgs; [
    cozette
    scientifica
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    liberation_ttf
    nerd-fonts.fira-code
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
  ];
}
