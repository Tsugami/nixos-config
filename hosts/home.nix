{ config, pkgs, ... }:

{

  imports =
    (import ../modules/editors) ++ (import ../modules/shell) ++ (import ../modules/programs);

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "yslan";
  home.homeDirectory = "/home/yslan";
  home.sessionVariables = {
    # NIX_PATH="/home/yslan/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels:nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos:nixos-config=/etc/nixos/configuration.nix:/nix/var/nix/profiles/per-user/root/channels";
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    # desktop programs
    discord
    slack
    google-chrome
    # others
    nixpkgs-fmt
    # command line tools
    htop
    exa
    procs
    bat
  ];

   gtk = {                                     # Theming
    enable = true;
    theme = {
      name = "Dracula";
      package = pkgs.dracula-theme;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    font = {
      name = "JetBrains Mono Medium";         # or FiraCode Nerd Font Mono Medium
    };                                        # Cursor is declared under home.pointerCursor
  };
}
