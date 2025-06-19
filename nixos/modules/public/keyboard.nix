{ ... }: {
  # Keyboard layout
  console = {
    useXkbConfig = true;
    earlySetup = true;
  };

  services.xserver = {
    xkb.layout = "intlde";
    xkb.options = "eurosign:e,ctrl:nocaps,nbsp:none";
    xkb.extraLayouts.intlde = {
      description = "English (US, intl., German Umlaut)";
      languages = [ "en" "de" ];
      symbolsFile = builtins.fetchurl {
        url =
          "https://raw.githubusercontent.com/rgeber/xkb-layout-us-intl-de/f3c24c3d8a3c06d96f95ee263884269969001da2/intlde";
        sha256 =
          "c2ef333f382ca735bcdd67181a9e5ba348a87b219ca105487e6c9616dbca46bf";
      };
    };
  };
}
