{
  imports = [
    # Essentials
    ./boot.nix
    ./misc.nix
    ./users.nix
    ./networking.nix
    ./sound.nix
    ./internationalization.nix
    ./printing.nix
    ./greetd.nix
    ./nh.nix
    ./no-powerbutton.nix

    # Userspace
    ./hypr.nix
    ./stylix.nix
    ./kitty.nix
    ./browsers.nix
    ./socialize.nix
    ./gaming.nix
  ];
}
