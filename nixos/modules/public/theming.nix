{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [ pywalfox-native pywal16 ];
}
