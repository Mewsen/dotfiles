{ pkgs, ... }: {

  users.defaultUserShell = pkgs.bash;
  users.users.michael = {
    isNormalUser = true;
    description = "michael";
    shell = pkgs.bash;
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };

}
