{ config, pkgs, ... }:

{
  virtualisation.podman.enable = true;

  environment.systemPackages = with pkgs; [
    docker_compose
    gitkraken
    gradle
    insomnia
    jetbrains.idea-ultimate
    maven
    visualvm
    podman-compose
  ];

  ### Docker
  #virtualisation.docker = {
  #  autoPrune.enable = true;
  #  enable = true;
  #  #enableNvidia = true;
  #  enableOnBoot = false;
  #  liveRestore = false;
  #};

  ### VirtualBox
  #  virtualisation.virtualbox = {
  #    host.enable = true;

  # Takes quite a while to compile. It adds support for:
  # USB 2.0/3.0 devices, VirtualBox RDP, disk encryption, NVMe and PXE boot for Intel cards
  #host.enableExtensionPack = true;

  # VirtualBox Guest additions
  #virtualisation.virtualbox.guest.enable = true;
  #  };

  ### Java
  gytix.java.additionalPackages = {
    inherit (pkgs) jdk11 adoptopenjdk-hotspot-bin-14 jdk15;
  };
  programs.java.enable = true;
  programs.java.package = pkgs.jdk15;

  ### Node
  programs.npm.enable = true;
  programs.npm.package = pkgs.nodejs-14_x;
  gytix.node.additionalPackages = {
    inherit (pkgs) nodejs-14_x;
  };
}
