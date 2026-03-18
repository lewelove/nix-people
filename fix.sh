#!/usr/bin/env bash

cd /mnt/home/romma/nix-config/home

nixos-generate-config --no-filesystems --show-hardware-config > modules/hardware-configuration.nix

git add .

nixos-install --flake .#home --impure
