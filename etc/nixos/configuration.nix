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
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;
  
  #------------------------------------------------------------------------#
  #				Networking
  #------------------------------------------------------------------------#
  # HostName
  networking.hostName = "nixos";
  
  # Wireless Devices
  networking.wireless.enable = true;
  networking.wireless.userControlled.enable = true;
  networking.wireless.interfaces = ["wlp1s0"];
  
  # Networking devices Using DHCP
  networking.useDHCP = false;
  networking.interfaces.enp2s0.useDHCP = true;
  networking.interfaces.wlp1s0.useDHCP = true;

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
      extraPackages = with pkgs; [
        i3blocks
	i3-gaps
      ];
    };
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
    picom
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

