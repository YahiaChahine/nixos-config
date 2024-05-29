{

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
    }
