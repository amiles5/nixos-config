{pkgs, ...}: let
  text = "rgb(251, 241, 199)";
in {
  home.packages = [pkgs.hyprlock];
  xdg.configFile."hypr/hyprlock.conf".text = ''

    background {
      blur_passes=3
      blur_size=2
      path=/home/milesj/Pictures/wallpapers/others/Fantasy-Hongkong.png
    }

    general {
      disable_loading_bar=true
      grace=10
      hide_cursor=true
      no_fade_in=false
    }

    image {
      size=750
      border_color=rgb(0C96F9)
      border_size=4
      halign=center
      path=/home/milesj/Pictures/wallpapers/others/cats.jpg
      position=0, 200
      rounding=-1
      valign=center
    }

    input-field {
      monitor=
      size=600, 100
      dots_center=true
      fade_on_empty=false
      font_color=rgb(CFE6F4)
      inner_color=rgb(657DC2)
      outer_color=rgb(0D0E15)
      outline_thickness=5
      placeholder_text=Password...
      position=0, -80
      shadow_passes=2
    }

  '';
}
