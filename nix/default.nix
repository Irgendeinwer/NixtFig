{
  imports = [
    # Essentials
    ./boot.nix
    ./misc.nix
    ./users.nix
    ./networking.nix
    ./sound.nix
    ./internationalization.nix
    ./greetd.nix
    ./no-powerbutton.nix

    # Userspace
    ./hypr.nix
    ./browsers.nix
    ./gaming.nix
  ];
}
