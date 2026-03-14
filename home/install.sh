#!/usr/bin/env bash

set -e

nix --extra-experimental-features "nix-command flakes" run github:nix-community/disko -- --mode zap_create_mount /mnt/nix-config/home/disko.nix

mkdir -p /mnt/home/romma

git clone https://github.com/lewelove/nix-people.git /mnt/home/romma/nix-config

nixos-install --flake /mnt/home/romma/nix-config/home#home
