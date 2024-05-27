{ config, pkgs, ... }:

{
imports = [
    ./programs
];

wayland.windowManager.hyprland.enable = true;

home.username = "yahias";
home.homeDirectory = "/home/yahias"; 
home.packages = with pkgs; [
  dunst
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
];
gtk.iconTheme.package =  pkgs.rose-pine-icon-theme;
gtk.iconTheme.name = "rose-pine";
programs.fastfetch = {
    enable = true;
    settings = {
           logo = {
            source = "nixos";
            padding = {
              right = 4;
            };
          };
          display = {
            binaryPrefix = "si";
            color = "blue";
            separator = "  ";
          };
          modules = [
            "kernel"
            "packages"
            "uptime"
            "shell"
            "break"
            "wm"
            "terminal"
            "terminalfont"
            "font"
            "theme"
            "icons"
            "cursor"
            "wmtheme"
            "break"
            "cpu"
            "memory"
            "gpu"
            "break"
            "colors"
          ];
        };
};

programs.fzf = {
        enable = true;
        enableZshIntegration = true;
    };


programs.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestion.enable = true;
  syntaxHighlighting.enable = true;
  oh-my-zsh = {
      enable = true;
      theme =  "dstufft";
      plugins = [ "git" "fzf" ];
    };
    shellAliases = {
       nix-switch = "sudo nixos-rebuild switch --flake ~/nixos-config/#$yahias";
      nix-switchu = "sudo nixos-rebuild switch --upgrade --flake ~/nixos-config#yahias";
      nix-flake-update = "sudo nix flake update ~/nixos-config#";
      nix-clean = "sudo nix-collect-garbage && sudo nix-collect-garbage -d && sudo rm /nix/var/nix/gcroots/auto/* && nix-collect-garbage && nix-collect-garbage -d"; 
        };

};


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

  programs.kitty = {
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
