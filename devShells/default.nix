{ pkgs }:
{
  node = import ./node.nix { inherit pkgs; };
  rust = import ./rust.nix { inherit pkgs; };
}
