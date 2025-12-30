{ config, lib, pkgs, ... }:

{
  # Define user account
  users.users.johan = {
    isNormalUser = true;
    description = "Johan Basson";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };
}
