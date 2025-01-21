{ inputs, lib, config, ... }:
{
 options.custom.browser.enable = lib.mkEnableOption "browsers";
 config = lib.mkIf config.custom.browser.enable {
    environment.systemPackages = [
	inputs.zen-browser.packages.x86_64-linux.default
    ];
 };
}
