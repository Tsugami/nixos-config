#!/bin/sh

pushd ~/.setup
sudo nixos-rebuild switch -I nixos-config=./config/configuration.nix
popd

