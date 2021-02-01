{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "cemd";
  home.homeDirectory = "/home/cemd";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";

  home.packages = [
    pkgs.rustc
    pkgs.rustfmt
    pkgs.cargo
    pkgs.go
    pkgs.element-desktop
    pkgs.tmux
    pkgs.vscode-extensions.golang.Go
    pkgs.vscode
    pkgs.fira-code
    pkgs.tdesktop
    pkgs.neovim
    pkgs.qbittorrent
    pkgs.vlc
    pkgs.jq
    pkgs.discord
    pkgs.ipfs
    pkgs.ipld

    # debugging
    pkgs.dstat
  ];

  programs.git = {
    enable = true;
    userName = "cemg";
    userEmail = "gurescicem@gmail.com";
  };

  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      epkgs.nix-mode
      epkgs.magit
    ];
  };
}
