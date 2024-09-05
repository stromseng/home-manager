{ pkgs, ... }: {
  # Set zsh to run from bash
  programs.bash.enable = true;
  programs.bash.profileExtra = ''
  zsh
  '';
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      syntaxHighlighting.highlighters = [ "main" "brackets" ];
      autocd = true;
      defaultKeymap = "emacs";

      shellAliases = {
        gs = "git status";
        ga = "git add";
        gaa = "git add --all";
        gc = "git commit";
        gph = "git push";
        gpl = "git pull";
        gco = "git checkout";
        gd = "git diff";

        cat = "bat";
        ls = "eza";
      };
      initExtraBeforeCompInit = ''
      '';
      initExtra = ''
      # Python Rye tool
      source "$HOME/.rye/env"
      '';
    };
    # A modern ls replacement
    eza = {
      enable = true;
    };
    # A modern cat replacement
    bat = {
      enable = true;
    };
    ripgrep = {
      enable = true;
    };
  };
}
