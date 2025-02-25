{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;
    settings = {
#     image = "~/Pictures/wallpapers/others/cats.jpg";
      image = "~/Pictures/wallpapers/others/Fantasy-Hongkong.png";
      clock = true;
      daemonize = true;
      ignore-empty-password = true;
      indicator = true;
      indicator-radius = 200;
      indicator-thickness = 20;
      effect-pixelate = 3;
      font = "JetBrainsMono Nerd Font";
      text-wrong-color = "FBF1C7FF";
      text-ver-color = "FBF1C7FF";
      text-clear-color = "FBF1C7FF";
      key-hl-color = "fabd2fFF";
      bs-hl-color = "fb4934FF";
      ring-clear-color = "d65d0eFF";
      ring-wrong-color = "cc241dff";
      ring-ver-color = "b8bb26FF";
      ring-color = "689d6aff";
      line-clear-color = "FFFFFF00";
      line-ver-color = "FFFFFF00";
      line-wrong-color = "FFFFFF00";
      separator-color = "FFFFFF00";
      line-color = "FFFFFF00";
      text-color = "FBF1C7FF";
      inside-color = "3C3836DD";
      inside-ver-color = "3C3836DD";
      inside-clear-color = "3C3836DD";
      inside-wrong-color = "3C3836DD";
      layout-bg-color = "FFFFFF00";
      layout-text-color = "FBF1C7FF";
    };
  };
}
