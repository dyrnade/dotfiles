{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    desktopManager.gnome3.enable = true;
    displayManager.slim.enable = true;
  };

#  environment.systemPackages = with pkgs; [
#    termite.terminfo 
#  ];

  services.openssh.enable = true;

  users.extraUsers.cqemu = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    uid = 1000;
    # Generated with `mkpasswd -m sha-512`
    password = "123";
  };
}
