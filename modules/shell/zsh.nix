{ pkgs, ... }:

{
  programs.zsh = {
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "command-not-found" ];
    };

    shellAliases = {
      # Common
      ls = "exa --icons";
      cat = "bat --style=auto";
      ps = "procs";
      top = "htop";
      # Gihub CLI aliases
      prs = "gh pr create --fill && gh pr merge -sd --admin"; # This alias creates a pull request and merge like squash

      # Common aliases
      cls = "clear";

      # Directory aliases
      dev = "cd $HOME/dev";

      # Docker aliases
      doc = "docker $ * ";
      d-c = "docker-compose $*";

      # Node aliases
      clear-node = "find . -name \" node_modules \" -type d -prune | xargs du -chs";
    };

    initExtra = ''
      source ${pkgs.spaceship-prompt}/share/zsh/site-functions/prompt_spaceship_setup

      ZSH_THEME="spaceship"
      SPACESHIP_CHAR_SYMBOL="λ"
    '';

    enable = true;
    enableAutosuggestions = true;
  };
}
