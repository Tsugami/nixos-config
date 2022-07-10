#!/bin/sh

pushd ~/.setup
home-manager switch -f ./home.nix
popd

