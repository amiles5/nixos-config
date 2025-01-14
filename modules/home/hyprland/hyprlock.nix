{pkgs, ...}: let
  text = "rgb(251, 241, 199)";
in {
  home.packages = [pkgs.hyprlock];
  xdg.configFile."hypr/hyprlock.conf".text = ''

general {
    grace = 30
}

background {
    monitor =
    # NOTE: use only 1 path
	#path = screenshot   # screenshot of your desktop
        path=~/Pictures/wallpapers/others/Fantasy-Hongkong.png

    #color = $color7

    # all these options are taken from hyprland, see https://wiki.hyprland.org/Configuring/Variables/#blur for explanations
    blur_size = 5
    blur_passes = 1 # 0 disables blurring
    noise = 0.0117
    contrast = 1.3000 # Vibrant!!!
    brightness = 0.8000
    vibrancy = 0.2100
    vibrancy_darkness = 0.0
}

input-field {
    monitor =
    size = 250, 50
    outline_thickness = 3
    dots_size = 0.33 # Scale of input-field height, 0.2 - 0.8
    dots_spacing = 0.15 # Scale of dots' absolute size, 0.0 - 1.0
    dots_center = true
    outer_color = $color5
    inner_color = $color0
    font_color = $color12
    fade_on_empty = true
    placeholder_text = <i>Password...</i> # Text rendered in the input box when it's empty.
    hide_input = false
    
    position = 0, 200
    halign = center
    valign = bottom
}

# Date
label {
    monitor =
    text = cmd[update:18000000] echo "<b> "$(date +'%A, %-d %B %Y')" </b>"
    color = $color12
    font_size = 34
    font_family = JetBrains Mono Nerd Font Mono ExtraBold
    position = 0, -100
    halign = center
    valign = top
}

# Hour-Time
label {
    monitor =
    text = cmd[update:1000] echo "$(date +"%H")"
#    text = cmd[update:1000] echo "$(date +"%I")" #AM/PM
    color = rgba(255, 185, 0, .8)
    font_size = 200
    font_family = JetBrains Mono Nerd Font Mono ExtraBold 
    position = 0, -200
    halign = center
    valign = top
}

# Minute-Time
label {
    monitor =
    text = cmd[update:1000] echo "$(date +"%M")"
    color = rgba(15, 10, 222, .8)
    font_size = 200
    font_family = JetBrains Mono Nerd Font Mono ExtraBold
    position = 0, -500
    halign = center
    valign = top
}

# Seconds-Time
label {
    monitor =
    text = cmd[update:1000] echo "$(date +"%S")"
#    text = cmd[update:1000] echo "$(date +"%S %p")" #AM/PM
    color = $color7
    font_size = 40
    font_family = JetBrains Mono Nerd Font Mono ExtraBold
    position = 0, -500
    halign = center
    valign = top
}

# User
label {
    monitor =
    text =    $USER
    color = $color10
    font_size = 18
    font_family = Inter Display Medium

    position = 0, 100
    halign = center
    valign = bottom
}

# uptime
label {
    monitor =
    text = cmd[update:60000] echo "<b> "$(uptime -p || $Scripts/UptimeNixOS.sh)" </b>"
    color = $color12
    font_size = 24
    font_family = JetBrains Mono Nerd Font Mono ExtraBold
    position = 0, 0
    halign = right
    valign = bottom
}

# weather edit the scripts for locations
# weather scripts are located in ~/.config/hypr/UserScripts Weather.sh and/or Weather.py
# see https://github.com/JaKooLit/Hyprland-Dots/wiki/TIPS#%EF%B8%8F-weather-app-related-for-waybar-and-hyprlock
label {
    monitor =
    text = cmd[update:3600000] [ -f ~/.cache/.weather_cache ] && cat  ~/.cache/.weather_cache
    color = $color12
    font_size = 24
    font_family = JetBrains Mono Nerd Font Mono ExtraBold
    position = 50, 0
    halign = left
    valign = bottom
}

# Put a picture of choice here. Default is the current wallpaper
image {
    monitor =
    path=/home/milesj/Pictures/wallpapers/others/cats.jpg
    size = 230
    rounding = -1
    border_size = 2
    border_color = $color11
    rotate = 0
    reload_time = -1
    position = 0, 300
    halign = center
    valign = bottom

    }

  '';
}
