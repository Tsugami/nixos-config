{ pkgs, config, ... }:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      github.github-vscode-theme
      pkief.material-icon-theme
      editorconfig.editorconfig
      esbenp.prettier-vscode
      streetsidesoftware.code-spell-checker
      usernamehw.errorlens
      eamodio.gitlens
    ];
  };

  home.file.".config/Code/User/settings.json" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/yslan/.setup/modules/editors/vscode/settings.json";
  };
   home.file.".config/Code/User/keybindings.json" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/yslan/.setup/modules/editors/vscode/keybindings.json";
  };
}