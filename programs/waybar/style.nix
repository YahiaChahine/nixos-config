{ ... }:
let custom = {
    font = "JetBrainsMono Nerd Font";
    font_size = "15px";
    font_weight = "bold";
    text_color = "#cdd6f4";
    secondary_accent= "89b4fa";
    tertiary_accent = "f5f5f5";
    background = "11111B";
    opacity = "0.98";
};
in 
{
  programs.waybar.style = ''

    * {
        border: none;
        border-radius: 0px;
        padding: 0;
        margin: 0;
        min-height: 0px;
    }
    #clock.time {
        margin-left: 12px;
        margin-right: 12px;
        min-width: 60px;
    }
    #clock {
        /* No styles */
    }

    window#waybar {
        background: none;
    }

    #workspaces {
  padding: 2px 2px;
}

#workspaces .active * {
  color: #ebbcba;
}

#workspaces button {
  border-top: 2px solid transparent;
  padding-bottom: 2px;
  padding-left: 4px;
  padding-right: 4px;
  color: #e0def4; 
}
#workspaces button.visible {
  border-color: #333333; /* Sway palette focused_inactive/border */
  color: #ffffff; /* Sway palette: focused_inactive/text */
  background-color: #5f676a; /* Sway palette focused_inactive/background */
}

#workspaces button.focused {
  border-color: #4c7899; /* Sway palette: focused/border */
  color: #ffffff; /* Sway palette: focused/text */
  background-color: #285577; /* Sway palette: focused/background */
}

    #tray, #pulseaudio, #network, #cpu, #memory, #disk, #clock, #battery {
        font-size: ${custom.font_size};
    }


    #tray {
    }

    #pulseaudio {
    }
    #battery {
    }
    #network {
    }
    

    #custom-launcher {
        font-size: 20px;
        color: #b4befe;
        font-weight: ${custom.font_weight};
        padding-left: 5px;
        padding-right: 12px;
    }
  '';
}
