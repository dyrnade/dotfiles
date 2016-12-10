# nixos-configuration

Backup of my NixOS configuration files.

Most of the configuration is copied from https://github.com/yamafaktory/nixos-configuration

## override default attributes of nix packages
cp .nixpkgs $HOME -r

## nix-qemu 

### build VM
nixos-rebuild build-vm -I nixos-config=./configuration.nix -I nixpkgs=$HOME/projects/nixpkgs/

### connect VM
ssh -v localhost -p 2220 -l cqemu -o PreferredAuthentications=password -o PubkeyAuthentication=no
