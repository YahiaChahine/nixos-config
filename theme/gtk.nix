{pkgs, lib, ...}:
{
gtk.iconTheme.package =  pkgs.rose-pine-icon-theme;
gtk.iconTheme.name = "rose-pine";

  home.pointerCursor = {
    gtk.enable = true;
    package = lib.mkForce pkgs.bibata-cursors;
    name = lib.mkForce "Bibata-Modern-Ice";
    size = lib.mkForce 20;
  };

}
