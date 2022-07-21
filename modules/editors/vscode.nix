{ pkgs, config, ... }:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      # Themes
      github.github-vscode-theme
      pkief.material-icon-theme
      usernamehw.errorlens

      # Common Validations
      editorconfig.editorconfig
      esbenp.prettier-vscode

      # Helpers
      streetsidesoftware.code-spell-checker
      usernamehw.errorlens
      eamodio.gitlens

      # Common
      ms-azuretools.vscode-docker

      # Frontend
      bradlc.vscode-tailwindcss

      # Backend
      prisma.prisma
    ];
  };

  home.file.".config/Code/User/settings.json" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/yslan/.setup/modules/editors/vscode/settings.json";
  };
   home.file.".config/Code/User/keybindings.json" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/yslan/.setup/modules/editors/vscode/keybindings.json";
  };
}
