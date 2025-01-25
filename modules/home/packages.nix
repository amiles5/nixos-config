{
  inputs,
  pkgs,
  ...
}: let
  _2048 = pkgs.callPackage ../../pkgs/2048/default.nix {};
in {
  home.packages = with pkgs; [
    #   _2048

    ## CLI utility
    ani-cli
    bitwise # cli tool for bit / hex manipulation
    caligula # User-friendly, lightweight TUI for disk imaging
    cliphist # clipboard manager
    eza # ls replacement
    entr # perform action when file change
    fd # find replacement
    ffmpeg
    file # Show file information
    gtt # google translate TUI
    gifsicle # gif utility
    gtrash # rm replacement, put deleted files in system trash
    hexdump
    imv # image viewer
    killall
    lazygit
    libnotify
    man-pages # extra man pages
    mpv # video player
    ncdu # disk space
    nitch # systhem fetch util
    openssl
    onefetch # fetch utility for git repo
    pamixer # pulseaudio command line mixer
    playerctl # controller for media players
    poweralertd
    programmer-calculator
    qview # minimal image viewer
    ripgrep # grep replacement
    tdf # cli pdf viewer
    tldr
    todo # cli todo list
    toipe # typing test in the terminal
    ttyper # cli typing test
    unzip
    firefox
    valgrind # c memory analyzer
    wl-clipboard # clipboard utils for wayland (wl-copy, wl-paste)
    wget
    yazi # terminal file manager see https://github.com/NixOS/nixpkgs/issues/353119 for error 7zz-24.08 failed with exit code 2
    yt-dlp-light
    xdg-utils
    xxd
    blueman
    bluez

    ## CLI
    cbonsai # terminal screensaver
    cmatrix
    pipes # terminal screensaver
    sl
    tty-clock # cli clock
    icloudpd
    file
    whatsapp-for-linux
    ## GUI Apps
#   audacity
    bleachbit # cache cleaner
    gimp
    libreoffice
    nix-prefetch-github
    pavucontrol # pulseaudio volume controle (GUI)
    qalculate-gtk # calculator
    soundwireserver # pass audio to android phone
    vlc
    winetricks
    wineWowPackages.wayland
    zenity
    gparted
    ventoy-full
    tidal-hifi
    tidal-dl
    rpi-imager
    hypridle
    wpaperd
    noson
    nwg-look
#   nwg-dock-hyprland
    nwg-displays
    xsettingsd
    kmymoney
    strawberry
    transmission_4
    freecad-wayland
    usbutils
    sublime3
    obsidian
# C / C++
    gcc
    gdb
    gnumake
    digikam


    # Python
    python3
    python312Packages.ipython
    inputs.alejandra.defaultPackage.${system}
  ];
}
