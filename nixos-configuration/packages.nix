# cemg - packages.nix

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    sublime
    curl
    fish
    gimp
    git
    glxinfo
    gnumake
#    google-chrome
    opera
    htop
    openjdk8
    primus
    redshift
    skype
    tree
    unrar
    vlc
    vim
    weechat
    wget
    xclip
    zip
  ];
}
