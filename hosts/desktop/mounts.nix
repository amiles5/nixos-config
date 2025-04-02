{
  config,
  pkgs,
  ...
}: {
 
fileSystems."/mnt/backup_images" =
    { device = "//192.168.1.250/backup_images";
      fsType = "cifs";
      options = [ "x-systemd.automount" "noauto" "credentials=/etc/samba/cred" "uid=1000" "gid=100"];
    };

  fileSystems."/mnt/roon_data" =
    { device = "//192.168.1.250/roon_data_yakov";
      fsType = "cifs";
      options = [ "x-systemd.automount" "noauto" "credentials=/etc/samba/cred" "uid=1000" "gid=100"];
    };

   fileSystems."/home/milesj/Documents" =
    { device = "//192.168.1.250/Archive/Documents";
      fsType = "cifs";
      options = [ "x-systemd.automount" "noauto" "credentials=/etc/samba/cred" "uid=1000" "gid=100"];
    };
   fileSystems."/mnt/ventoy-iso" =
    { device = "/dev/sdb1";
      fsType = "exfat";
    };

  fileSystems."/mnt/ventoy-img" =
    { device = "/dev/sdb3";
      fsType = "ext4";
    };

}
