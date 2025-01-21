{ lib, config, ... }:
{
  options.custom.no-powerbutton.enable = lib.mkEnableOption "don’t shutdown when power button is short-pressed";
  config = lib.mkIf config.custom.no-powerbutton.enable {
    services.logind.extraConfig = ''
      HandlePowerKey=ignore
    '';
  };
}
