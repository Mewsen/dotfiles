{ pkgs, ... }: {

  services.logind = {
    lidSwitchDocked = "ignore";
    powerKey = "suspend";
    powerKeyLongPress = "poweroff";
  };

  environment.systemPackages = with pkgs; [ power-profiles-daemon ];

  services.upower.enable = true;
  services.power-profiles-daemon.enable = true;

  services.fwupd.enable = true;
  hardware.framework.amd-7040.preventWakeOnAC = true;
}
