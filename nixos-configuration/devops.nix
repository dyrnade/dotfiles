# cemg - devops.nix

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    chefdk
    git
    gnumake
    hstr
    meld
    vim
    tilda
  ];
}
