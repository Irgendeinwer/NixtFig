{ ... }:
{
  boot.loader.systemd-boot = {
    enable = true;
    configurationLimit = 25;
    editor = false;
  };
}
