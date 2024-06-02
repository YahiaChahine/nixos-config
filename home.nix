{ config, pkgs, ... }:

{
imports = [
    ./programs
    ./theme/gtk.nix
];

wayland.windowManager.hyprland.enable = true;

home.username = "yahias";
home.homeDirectory = "/home/yahias"; 
home.packages = with pkgs; [
  gnumake
  wl-clipboard
  ripgrep
  fd
  unzip
  gcc
  nodejs_22
  pamixer
  go
  brightnessctl
  xfce.thunar
  python3
  networkmanagerapplet
  grimblast
  neovim
  zed-editor
  cura
];

services.mako.enable = true;


services.network-manager-applet.enable = true;
programs.rofi.enable = true;

  programs.tofi = {
    enable = true;
    settings = {
	anchor = "bottom";
	width = "100%";
	height = 30;
	horizontal = true;
	prompt-text = " run: ";
	outline-width = 0;
	border-width = 0;
	min-input-width = 120;
	result-spacing = 15;
	padding-top = 0;
	padding-bottom = 0;
	padding-left = 0;
	padding-right = 0;
    };
  };

programs.wlogout = {
	enable = true;
};


  programs.git = {
    enable = true;
    userName = "YahiaChahine";
    userEmail = "yahia.a.shahin@gmail.com";
  };
 
 home.stateVersion = "23.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
