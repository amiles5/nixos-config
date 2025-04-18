{pkgs, ...}: {

# services.xserver.enable = true;
# services.displayManager.sddm.enable = true;
# services.desktopManager.plasma6.enable = true;

  services = {
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    openssh.enable = true;
    tailscale.enable = true;
    fstrim.enable = true;
#   bluetooth.enable = true;
    hardware.bolt.enable = true;
  };

  services.printing = {
    enable = true;
    browsing = true;
    defaultShared = true;
    listenAddresses = ["*:631"];
    drivers = [pkgs.cups-brother-hl1210w];
    allowFrom = ["all"];
    extraConf = ''
      DefaultPaperSize A4
    '';
  };

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
    publish = {
      enable = true;
      userServices = true;
    };
  };

  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  '';
}
