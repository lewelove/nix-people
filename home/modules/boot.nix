{ config, pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages;
  
  # --- Legacy BIOS Boot ---
  boot.loader.grub = {
    enable = true;
    efiSupport = false;
    
    device = "/dev/disk/by-id/ata-KINGSTON_SA400S37240G_50026B7685338AC4"; 
    
    useOSProber = false;
  };

  boot.supportedFilesystems = [ "btrfs" "nfs" "ntfs" ];
}
