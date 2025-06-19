{ pkgs, ... }: {

  networking.hostName = "nixos";

  networking.networkmanager = {
    #wifi = { backend = "iwd"; };
    wifi = { powersave = false; };
    enable = true;
  };

  environment.systemPackages = with pkgs; [ iwd networkmanagerapplet ];

  networking.firewall.enable = false;
  networking.firewall.allowedTCPPorts = [ 3000 8080 8000 ];
  networking.firewall.allowedUDPPorts = [ ];

  hardware.bluetooth.enable = true;
}
