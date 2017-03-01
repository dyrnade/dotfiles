# cemg - users.nix

{ config, pkgs, ... }:

{
  users.extraUsers.cemg = {
    name = "cemg";
    group = "users";
    extraGroups = [
      "audio"
      #"bumblebee"
      "disk"
      "networkmanager"
      "systemd-journal"
      "video"
      "vboxusers"
      "wheel"
      "docker"
    ];
    createHome = true;
    home = "/home/cemg";
    uid = 1000;
    isNormalUser = true;
    shell = "/run/current-system/sw/bin/bash";
    initialPassword = "1";
    #openssh.authorizedKeys.keys = ["id_rsa" "id_rsa.pub"];
  };
}
