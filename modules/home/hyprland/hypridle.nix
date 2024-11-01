# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  #
# Hypridle
# Original config submitted by https://github.com/SherLock707
{pkgs, ...}: let
  text = "rgb(251, 241, 199)";
in {
  home.packages = [pkgs.hypridle];
  xdg.configFile."hypr/hypridle.conf".text = ''
    general {
    #    lock_cmd = pidof hyprlock || hyprlock # runs hyprlock if it is not already running (this is always run when "loginctl lock-session" is called)
        lock_cmd = pidof swaylock || swaylock # runs hyprlock if it is not already running (this is always run when "loginctl lock-session" is called)
        # unlock_cmd = killall hyprlock # kills hyprlock when unlocking (this is always run when "loginctl unlock-session" is called)
        before_sleep_cmd = loginctl lock-session    # ensures that the session is locked before going to sleep
        after_sleep_cmd = hyprctl dispatch dpms on # turn of screen after sleep (not strictly necessary, but just in case)
        ignore_dbus_inhibit = false             # whether to ignore dbus-sent idle-inhibit requests (used by e.g. firefox or steam)
    }

    # Screenlock
     listener {
         timeout = 600                    # 30 min
         on-timeout = loginctl lock-session # command to run when timeout has passed
         # on-resume = notify-send "Welcome back to your desktop!"  # command to run when activity is detected after timeout has fired.
         on-resume = wpaperd -d
    }
    # Turn off screen
    # (disabled by default)
       listener {
           timeout = 630                            # 30.5 min
           on-timeout = hyprctl dispatch dpms off  # command to run when timeout has passed
           on-resume = hyprctl dispatch dpms on    # command to run when activity is detected after timeout has fired.
     }

  '';
}
