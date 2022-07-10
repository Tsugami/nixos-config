#!/bin/sh

pushd ~/.setup
home-manager switch -f ./hosts/home.nix
popd

