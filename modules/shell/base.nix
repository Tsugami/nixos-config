_:
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
    cls = 'clear';
    reload!='. ~/.zshrc';

    # Directory aliases
    dotfiles = "cd $HOME/.dotfiles";
    dev = "cd $HOME/development";

    # Docker aliases
    d = 'docker $ * ';
    d-c='docker-compose $*';

    # Node aliases
    clear-node = "find . -name " node_modules " -type d -prune | xargs du -chs";
  };
in
{
  home.packages = [
    htop
    exa
    procs
    bat
  ];

  programs.zsh.shellAliases = shellAliases;
  programs.bash.shellAliases = shellAliases;
}
