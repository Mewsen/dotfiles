{ ... }: {

  services.dbus.enable = true;
  security.polkit.enable = true;

  systemd.services = { NetworkManager-wait-online = { enable = false; }; };
}
