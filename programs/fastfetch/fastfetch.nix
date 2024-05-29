{

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
    }
