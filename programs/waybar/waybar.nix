{
imports = [./style.nix];
programs.waybar = {
	enable = true;
settings.mainBar = {
    position= "bottom";
    layer= "top";
    height= 5;
    margin-top= 0;
    margin-bottom= 0;
    margin-left= 0;
    margin-right= 0;
    modules-left= [
        "custom/launcher" 
        "hyprland/workspaces"
    ];
    modules-center= [
         "hyprland/window"
   ];
    modules-right= [
    	"tray"
        "pulseaudio" 
        "battery"
        "clock#date"
        "clock#time"
    ];
    "clock#time"= {
        interval = 1;
        format = "{:%H:%M:%S}";
        tooltip = false;
   };

    "clock#date"= {
        interval = 10;
        format = " {:%Y/%m/%d(%a)}";
        tooltip-format = "{:%Y %B %e (%A)}";
        locale = "C.UTF-8";
   };
    "hyprland/window" = {
	format = "<span font='9' rise='-4444'>{}</span>";
	
    };
    "hyprland/workspaces"= {
        show-special= false;
        active-only= false;
        disable-scroll= true;
        format = "{name}";
        on-click= "activate";
        persistent-workspaces = {
            "1"= [];
            "2"= [];
            "3"= [];
            "4"= [];
            "5"= [];
            "6"= [];
        };
    };
    tray= {
        icon-size= 25;
        spacing= 4;
    };
    pulseaudio= {
        format= "{icon} {volume}%";
        format-muted= "󰖁  {volume}%";
        format-icons= {
            default= [" "];
        };
        scroll-step= 5;
        on-click= "pamixer -t";
    };
    battery = {
        format = "{icon} {capacity}%";
        format-icons = [" " " " " " " " " "];
        format-charging = " {capacity}%";
        format-full = " {capacity}%";
        format-warning = " {capacity}%";
        interval = 5;
        states = {
            warning = 20;
        };
        format-time = "{H}h{M}m";
        tooltip = true;
        tooltip-format = "{time}";
    };
    "custom/launcher"= {
        format= "";
        on-click= "pkill rofi ||  rofi -show drun -show-icons";
        tooltip= "false";
    };
  };
};

}
