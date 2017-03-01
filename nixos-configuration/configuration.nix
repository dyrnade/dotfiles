# cemg - configuration.nix

{ config, pkgs, ... }:

{
  imports = [
    # Add hardware scan configuration.
    ./hardware-configuration.nix
    # Add environment settings.
    ./environment.nix
    # Add packages.
    ./packages.nix
    # Add users.
    ./users.nix
    ./devops.nix
  ];

######## BOOT OPTIONS ########
  boot.loader = {
    efi.canTouchEfiVariables = true;
    systemd-boot.enable = true;
  };

  boot.extraModprobeConfig = ''
      options snd slots=snd-hda-intel
  '';

######## FONTS ##########
  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      fira-mono
      corefonts
      ubuntu_font_family
      font-awesome-ttf
    ];
  };

####### GPU AND AUDIO #########
  hardware = {
#    bumblebee = {
#      connectDisplay = true;
#      enable = true;
#    };
    cpu.intel.updateMicrocode = true;
    opengl = {
      driSupport32Bit = true;
      extraPackages = with pkgs; [ vaapiIntel ];
    };
    pulseaudio = {
      enable = true;
      systemWide = true;
    };
  };

####### LOCALIZATION #######
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

##### NETWORKING #######
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    # Use interface names like wlan0 instead of wlp2s0
    usePredictableInterfaceNames = false;
  };

##### EXTRA NIXPKGS #####
  nixpkgs.config = {
    allowUnfree = true;
    vim = {
      python = true;
      ftNixSupport = true;
    };
  };

###### EXTRA PROGRAMS #######
  programs = {
    bash.enableCompletion = true;
  };

  # Enable sudo 
  security.sudo = {
    enable = true;
  };

###### SERVICES #######
  services = {
    # Journald extra config
    journald = {
      extraConfig = ''
        SystemMaxUse=50M
      '';
    };
    # Xserver settings like - DE , DM, Layout etc..
    xserver = {
#      desktopManager = {
#        default = "gnome3";
#        gnome3.enable = true;
#      };
      windowManager = {
         notion.enable = true;
      };
#      displayManager = {
#        slim.enable = true;
#        sddm.autoNumlock = true;
#        slim.defaultUser = "cemg";
#      };
      enable = true;
      layout = "us";
      xkbOptions = "eurosign:e";
      videoDrivers = [ "intel" ];
      synaptics.enable = true;
      synaptics.twoFingerScroll = true;
    };
    # Enable the OpenSSH server.
    openssh = {
      enable = true;
    };
    # RedShift Configuration
#    redshift = {
#      enable = true;
#      brightness.day = "0.8";
#      brightness.night = "0.4";
#      latitude = "38.324972";
#      longitude = "26.766810";
#    };
    # NixOS Documentation in terminal. open with CTRL + ALT + F8 
    nixosManual.showManual = true;
    acpid.enable = true;
    udisks2.enable = true;
    memcached.enable = true;
  };

##### POWERMANAGEMENT #######
#  powerManagement = {
#    enable = true;
#    cpuFreqGovernor = "ondemand";
#  };

  time.timeZone = "Europe/Istanbul";
  # Virtualbox
  virtualisation.virtualbox.host.enable = true;
  virtualisation.docker.enable = true;
###### SYSTEM ########
  system = {
    autoUpgrade = {
      channel= "https://nixos.org/channels/nixos-unstable";
      enable = true;
    };
    #stateVersion = "16.09";
  };
}
