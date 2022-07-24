# Edet this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).


{ pkgs, ... }:

{
imports =
[ # Include the results of the hardware scan.
#./users.nix
];


networking.hostId = "12355671";

hardware.enableAllFirmware = true;
nixpkgs.config.allowUnfree = true;
hardware.bluetooth.enable = false;

# disable coredump that could be exploited later
# and also slow down the system when something crash
systemd.coredump.enable = false;
# Upgrades
#system.autoUpgrade.enable = true;
#system.autoUpgrade.allowReboot = true;
#system.autoUpgrade.channel = "https://nixos.org/channels/nixos-unstable/";

# Set your time zone.
time.timeZone = "Europe/Berlin";



# The global useDHCP flag is deprecated, therefore explicitly set to false here.
# Per-interface useDHCP will be mandatory in the future, so this generated config
# replicates the default behaviour.
#networking.useDHCP = false;

# Configure network proxy if necessary
# networking.proxy.default = "http://user:password@proxy:port/";
# networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

# Select internationalisation properties.
i18n.defaultLocale = "en_US.UTF-8";
console = {
  font = "Lat2-Terminus16";
  keyMap = "us";
};

# NUR

#nixpkgs.config.packageOverrides = pkgs: {
  #nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
    #inherit pkgs;
  #};
#};


# Enable CUPS to print documents.
# services.printing.enable = true;

# List packages installed in system profile. To search, run:
# $ nix search wget
# packages

# started in user sessions.
# programs.mtr.enable = true;
# programs.gnupg.agent = {
#   enable = true;
#   enableSSHSupport = true;
# };

# List services that you want to enable:


# Open ports in the firewall.
#networking.firewall.allowedTCPPorts = [ 22  8096 ];
#networking.firewall.allowedUDPPorts = [ ... ];
# Or disable the firewall altogether.

programs = {
   dconf.enable = true;
   zsh = {
    enable = true;
  syntaxHighlighting = {
     enable = true;
     highlighters = [ "main" "brackets" ];
     styles = {
     "alias" = "fg=magenta,bold";
     };
  };
  #ohMyZsh = {
  #   theme = "robbyrussell";
  #   plugins = [ "zsh-interactive-cd" ];
  #};
   };
   # enable firejail
   #firejail.enable = true;
   #firejail.wrappedBinaries = {
   #firefox = {
   #    executable = "${pkgs.lib.getBin pkgs.firefox}/bin/firefox";
   #    profile = "${pkgs.firejail}/etc/firejail/firefox.profile";
   #};
   #};
};

#programs.kdeconnect.enable = true;
system.stateVersion = "21.11";
}
