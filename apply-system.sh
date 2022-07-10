#!/bin/sh

pushd ~/.setup
sudo nixos-rebuild switch -I nixos-config=./hosts/configuration.nix
popd

