{ pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ../../../public/audio.nix
    ../../../public/boot.nix
    ../../../public/firefox.nix
    ../../../public/fonts.nix
    ../../../public/graphics.nix
    ../../../public/hardware.nix
    ../../../public/hyprland.nix
    ../../../public/keyboard.nix
    ../../../public/network.nix
    ../../../public/printer.nix
    ../../../public/nix.nix
    ../../../public/nvim.nix
    ../../../public/power.nix
    ../../../public/session.nix
    ../../../public/userspace.nix
    ../../../public/virt.nix
    ../../../public/yubikey.nix
    ../../../public/i18n.nix
    ../../applications.nix
    ../../user.nix
    ../../ssh.nix
    ../../../public/theming.nix
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  environment.systemPackages = with pkgs; [ framework-tool ];

  #nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";
}
