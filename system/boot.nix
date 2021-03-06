{ ... }:
 
{


boot = {
   #kernelPackages = pkgs.linuxPackages_latest_hardened;
   loader = {
        efi = {
           #canTouchEfiVariables = true;
           #efiSysMountPoint = "/mnt/boot";
        };
        grub = {
           enable = true;
           devices = [ "nodev" ];
           efiInstallAsRemovable = true;
           efiSupport = true;
           useOSProber = true;
           #theme = pkgs.nixos-grub2-theme;
	   trustedBoot.isHPLaptop = true;
	   copyKernels = true;
        };
	systemd-boot = {
 	   enable = false;
	};
   };
   initrd = {
   	enable = true;
   };
   #plymouth = {
        #enable = true;
   #};
};
}
