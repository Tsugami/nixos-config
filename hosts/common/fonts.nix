{ pkgs, ... }:
{
   fonts.fonts = with pkgs; [
    jetbrains-mono
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}
