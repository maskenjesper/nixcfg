{
  config,
  pkgs,
  inputs,
  ...
}: {
  users.users.jakob = {
    initialHashedPassword = "$y$j9T$7wL88AP96ZSSgjTXdXtLO1$ZQ/HrF1H.VK8b2PgHsAEzFolIAbXcTJbMHpJTTe0Ek0";
    isNormalUser = true;
    description = "jakob";
    extraGroups = [
      "wheel"
      "networkmanager"
      "libvirtd"
      "flatpak"
      "audio"
      "video"
      "plugdev"
      "input"
      "kvm"
      "qemu-libvirtd"
    ];
    # openssh.authorizedKeys.keys = [
    # ];
    packages = [inputs.home-manager.packages.${pkgs.system}.default];
  };
  home-manager.users.jakob =
    import ../../../home/jakob/${config.networking.hostName}.nix;
}
