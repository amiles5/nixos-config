{
  pkgs,
  host,
  ...
}: {
  networking = {
    hostName = "${host}";
    networkmanager.enable = true;
    nameservers = ["8.8.8.8" "8.8.4.4" "1.1.1.1"];
    firewall = {
      enable = false;
      allowedTCPPorts = [631 22];
      allowedUDPPorts = [631];
    };
  };

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
}
