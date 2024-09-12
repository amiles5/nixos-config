{ ... }: 
{
  security.rtkit.enable = true;
  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = false;
  # security.pam.services.swaylock = { };
  security.pam.services.hyprlock = {};
}
