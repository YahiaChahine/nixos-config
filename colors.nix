{pkgs, inputs, ... }:
{
    
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";

    #stylix.base16Scheme = {
     #   base00 = "191724";
    #    base01 = "1f1d2e";
   #     base02 = "26233a";
  #      base03 = "6e6a86";
   #     base04 = "908caa";
    #    base05 = "e0def4";
     #   base06 = "e0def4";
      #  base07 = "524f67";
     #   base08 = "eb6f92";
    #    base09 = "f6c177";
   #     base0A = "ebbcba";
    #    base0B = "31748f";
     #   base0C = "9ccfd8";
      #  base0D = "c4a7e7";
     #   base0E = "f6c177";
    #    base0F = "524f67";
    #};
    stylix.fonts = {
        serif = {
        package = pkgs.nerdfonts.override {fonts = ["FiraCode"];};
        name = "FiraCode";
        };

        sansSerif = {
        package = pkgs.nerdfonts.override {fonts = ["FiraCode"];};
        name = "FiraCode";
        };

        monospace = {
        package = pkgs.nerdfonts.override {fonts = ["JetBrainsMono"];};
        name = "JetBrainsMono Nerd Font Mono";
        };

        emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
        };
    };

    stylix.cursor.package = pkgs.bibata-cursors;
    stylix.cursor.name = "Bibata-Modern-Ice";
    stylix.image = ./Fantasy-Autumn.png;
}
