{ pkgs, ... }: {

  services.udev.packages = [ pkgs.yubikey-personalization ];
  services.pcscd.enable = true;
  programs.gnupg.agent = {
    pinentryPackage = pkgs.pinentry-qt;
    enable = true;
    enableSSHSupport = true;
  };

  hardware.gpgSmartcards.enable = true;

  services.usbmuxd = {
    enable = true;
    package = pkgs.usbmuxd2;
  };

  environment.systemPackages = with pkgs; [
    yubioath-flutter
    gnupg
    pinentry-qt
  ];
}
