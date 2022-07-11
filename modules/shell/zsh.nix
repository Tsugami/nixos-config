{ pkgs, ... }:

{
  programs.zsh = {
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "command-not-found" ];
    };

    initExtra = ''
      source ${pkgs.spaceship-prompt}/share/zsh/site-functions/prompt_spaceship_setup
    '';

    enable = true;
    enableAutosuggestions = true;
  };
}
