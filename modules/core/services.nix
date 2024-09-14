{ ... }: 
{
  services = {
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    openssh.enable = true;
    tailscale.enable = true;
    fstrim.enable = true;
    avahi.enable = true;
    printing.enable = true;
 #  printing = {
 #    enable = true;
 #    drivers = [
 #      # pkgs.hplipWithPlugin
 #      cups-brother-hl1210w
 #    ];
 #  };
  };
  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  '';
}
