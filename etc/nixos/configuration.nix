# Config And Pkgs
{ config, pkgs, ... }:

{
  #------------------------------------------------------------------------#
  #				NixOS General
  #------------------------------------------------------------------------#
  system.stateVersion = "21.05";
  # Imports
  imports =
    [ # Hardware scan
      ./hardware-configuration.nix
    ];
  
  #------------------------------------------------------------------------#
  # 				Boot-Loader
  #------------------------------------------------------------------------#
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    grub = {
      device = "/dev/sda";
      useOSProber = true;
    };
  };
  
  #------------------------------------------------------------------------#
  #				Networking
  #------------------------------------------------------------------------#
  # Networking
  networking = {
    # HostName
    hostName = "nixos";
    # Interfaces
    useDHCP = false;
    interfaces = {
      enp2s0.useDHCP = true;
      wlp1s0.useDHCP = true;
    };
    
    # Wireless
    wireless = {
      enable = true;
      userControlled = {
        enable = true;
      };
      interfaces = ["wlp1s0"];
      networks = {
        deivename = {
          psk = "password";
        };
      };
    };
  };

  # Proxy
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  #------------------------------------------------------------------------#
  #				Localization
  #------------------------------------------------------------------------#
  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Locale
  i18n = {
    defaultLocale = "en_US.UTF-8";
  };
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  #------------------------------------------------------------------------#
  #				DisplayManager
  #------------------------------------------------------------------------#
  # Xserver
  services.xserver = {
    enable = true;
    layout = "us";
    libinput.enable = true;
        
    # DisplayManager
    displayManager = {
      lightdm.enable = true;
      defaultSession = "none+i3";
    };
    
    # WindowManager
    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
      extraPackages = with pkgs; [
        i3blocks
      ];
    };
  };

  #------------------------------------------------------------------------#
  #				Picom
  #------------------------------------------------------------------------#
  # Picom
  services.picom = {
    enable = true;
    fade = true;
    shadow = true;
    fadeDelta = 4;
  };
  
  #------------------------------------------------------------------------#
  #				Sound
  #------------------------------------------------------------------------#
  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio = {
    enable = true;
    support32Bit = true;
  };
  
  #------------------------------------------------------------------------#
  #				Mobile Connectivity
  #------------------------------------------------------------------------#
  services.gvfs = {
    enable = true;
  };

  programs.adb.enable = true;

  services.udev.packages = [
    pkgs.android-udev-rules
  ];

  #------------------------------------------------------------------------#
  #				Users
  #------------------------------------------------------------------------#
  users.users.wargun = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  #------------------------------------------------------------------------#
  #				Packages
  #------------------------------------------------------------------------#
  # nonfree Licenced Apps
  nixpkgs.config.allowUnfree = true;

  # Packages to Install
  environment.systemPackages = with pkgs; [
    # Terminal Apps
    wget
    git
    # Apps
    xfce.thunar
    alacritty
    rofi
    # Appearance
    nitrogen
    lxappearance
    # Language
    nodejs
    # Text-Editors
    neovim
    vscode
    # Browser
    google-chrome
    # Media
    vlc
    moc
    # i3Bar config
    acpi
    light
    # zip/unzip
    zip
    unzip
    # Mobile Connect
    jmtpfs
  ];

  #------------------------------------------------------------------------#
  #				Fonts
  #------------------------------------------------------------------------#
  fonts.fonts = with pkgs; [
    font-awesome
    hack-font
  ];
  
  #------------------------------------------------------------------------#
  #				SSH
  #------------------------------------------------------------------------#
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
  
  #------------------------------------------------------------------------#
  #				Firewall
  #------------------------------------------------------------------------#
  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  }

