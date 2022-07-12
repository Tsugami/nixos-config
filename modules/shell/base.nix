# My aliases
{ pkgs, ... }:
let
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
    d-c="docker-compose $*";

    # Node aliases
    clear-node = "find . -name \" node_modules \" -type d -prune | xargs du -chs";
  };
in
{
  home.packages = with pkgs; [
    htop
    exa
    procs
    bat
  ];

  programs.zsh.shellAliases = shellAliases;
  programs.bash.shellAliases = shellAliases;
}
