{ config, pkgs, username, hostname, ... }:

{
  networking = {
    hostName = hostname;
    networkmanager.enable = true;
    firewall.checkReversePath = "loose";
    firewall.allowedTCPPorts = [ 80 8080 6600 666 ];
    firewall.allowedUDPPorts = [ 9 ]; 

    interfaces.enp3s0.wakeOnLan.enable = true;

  };

  environment.systemPackages = [ pkgs.ethtool ];
}
