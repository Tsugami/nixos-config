{ pkgs ? import <nixpkgs> {} }:

with pkgs;

t {
  buildInputs = [
    cargo
    rustc
    rustfmt
    rust-analyzer
    clippy
  ];
}
