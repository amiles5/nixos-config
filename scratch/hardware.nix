
  fileSystems."/mnt/backup_images" = {
    device = "//192.168.1.250/backup_images";
    fsType = "cifs";
  };

  fileSystems."/mnt/roon_data" = {
    device = "//192.168.1.250/roon_data_yakov";
    fsType = "cifs";
  };

  fileSystems."/mnt/ventoy-iso" = {
    device = "/dev/disk/by-uuid/1C11-749A";
    fsType = "exfat";
  };

  fileSystems."/mnt/bbbb" = {
    device = "/dev/disk/by-uuid/230bf232-6d96-4e7d-bae2-9144f758d41a";
    fsType = "ext4";
  };
