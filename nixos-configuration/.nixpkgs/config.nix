{
  allowUnfree = true; 
  packageOverrides = pkgs: rec {
    kubernetes = pkgs.callPackage ~/kubernetes.nix {};
  };
}

