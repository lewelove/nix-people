#!/usr/bin/env bash

nix --extra-experimental-features "nix-command flakes" run github:nix-community/disko -- --mode mount ./disko.nix

cd /mnt/home/romma/nix-hosts/home

nixos-generate-config --no-filesystems --show-hardware-config > modules/hardware-configuration.nix

git add .

nixos-install --flake .#home --impure
