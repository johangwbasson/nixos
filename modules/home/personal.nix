{ config, pkgs, ... }:

{
  imports = [
    ./common.nix
  ];

  # Personal git configuration
  programs.git = {
    userEmail = "johan@personal.com";
    extraConfig = {
      # Personal-specific git settings
      init.defaultBranch = "main";
    };
  };

  # Personal-specific packages or configurations can go here
  home.packages = with pkgs; [
    # Add personal-only packages here
  ];
}
