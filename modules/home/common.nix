{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should manage
  home.username = "johan";
  home.homeDirectory = "/home/johan";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  home.stateVersion = "25.11";

  # Common packages for all profiles
  home.packages = with pkgs; [
    vim
    wget
    curl
    htop
    tree
    ripgrep
    fd
  ];

  # Common program configurations
  programs.bash = {
    enable = true;
    bashrcExtra = ''
      # Custom bash configuration
      alias ll='ls -lah'
      alias gs='git status'
    '';
  };

  programs.git = {
    enable = true;
    userName = "Johan Basson";
    # Email will be set per profile
  };

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}
