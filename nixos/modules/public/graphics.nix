{ pkgs, ... }: {
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [ mesa libva amdvlk ];
    extraPackages32 = with pkgs; [ driversi686Linux.amdvlk ];
  };

  environment.systemPackages = with pkgs; [
    v4l-utils
    libvdpau
    vulkan-tools
    glxinfo
    amdgpu_top
  ];

  services.xserver.videoDrivers = [ "modesettings" ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  services.libinput.mouse.accelProfile = "flat";

  services.displayManager.sddm.enable = true;

  security.pam.services.sddm.enableGnomeKeyring = true;

  services.gnome.gnome-keyring.enable = true;

  services.xserver.enable = true;
}
