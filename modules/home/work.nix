{ config, pkgs, ... }:

{
  imports = [
    ./common.nix
  ];

  # Work git configuration
  programs.git = {
    userEmail = "johan@company.com";
    extraConfig = {
      # Work-specific git settings
      init.defaultBranch = "main";
      # Add work-specific git configurations here
      # For example:
      # core.sshCommand = "ssh -i ~/.ssh/work_id_rsa";
    };
  };

  # Work-specific packages or configurations can go here
  home.packages = with pkgs; [
    # Add work-only packages here
  ];
}
