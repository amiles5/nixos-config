{ pkgs,... }: 
{
  services = {
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    openssh.enable = true;
    tailscale.enable = true;
    fstrim.enable = true;
  };

services.printing = {
      enable = true;
      drivers = [
        pkgs.cups-brother-hl1210w
      ];
    };

services.avahi = {
  enable = true;
  nssmdns4 = true;
  openFirewall = true;
};

services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  '';
}
