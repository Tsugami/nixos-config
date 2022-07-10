{ pkgs, config, ... }:
{
  programs.git = {
    enable = true;
  };

  home.file.".gitconfig" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/yslan/.setup/modules/shell/git/.gitconfig";
  };
}
