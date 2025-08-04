{ pkgs, ... }: {

  networking.hostName = "nixos";

  networking.networkmanager = {
    wifi = { powersave = false; };
    enable = true;
  };

  environment.systemPackages = with pkgs; [ iwd networkmanagerapplet ];

  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ 3000 8080 8000 ];
  networking.firewall.allowedUDPPorts = [ 24727 ];
}
