{ config, lib, ... }:
{
  options.custom.internationalization.enable = lib.mkEnableOption "internationalization";
  config = lib.mkIf config.custom.internationalization.enable {
    time.timeZone = "Europe/Berlin";
    i18n.defaultLocale = "de_DE.UTF-8";
    console = {
      font = "Lat2-Terminus16";
      keyMap = "de";
    };
  };
}
