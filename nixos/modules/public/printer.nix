{ pkgs, ... }: {
  services.printing.enable = true;
  # environment.systemPackages = with pkgs; [  ];
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
}
