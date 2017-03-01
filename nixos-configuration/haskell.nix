# cemg - haskell.nix

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ghc
    cabal-install
    cabal2nix
  ];
}
