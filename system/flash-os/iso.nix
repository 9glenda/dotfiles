{ config, pkgs, ... }:
 
{
imports =
[ # Include the results of the hardware scan.
../configuration.nix
./xorg.nix
./packages.nix
../doas.nix
./steam.nix
];
networking.networkmanager.unmanaged = [
 "*-foo-bar"
];
}
