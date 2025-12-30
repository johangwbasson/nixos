{ config, lib, pkgs, ... }:

{
  # Set time zone
  time.timeZone = "Africa/Johannesburg";

  # Select internationalisation properties
  i18n.defaultLocale = "en_ZA.UTF-8";
}
