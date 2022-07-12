{ config, pkgs, ... }:
 
{
imports =
[ # Include the results of the hardware scan.
<nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix>
<nixpkgs/nixos/modules/installer/cd-dvd/channel.nix>
<nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-graphical-calamares.nix>
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
