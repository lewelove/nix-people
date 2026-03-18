{ config, pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages;
  
  # --- Legacy BIOS Boot ---
  boot.loader.grub = {
    enable = true;
    efiSupport = false;
    
    useOSProber = false;
  };

  boot.supportedFilesystems = [ "btrfs" "nfs" "ntfs" ];
}
