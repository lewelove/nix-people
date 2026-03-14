#!/usr/bin/env bash

git clone https://github.com/lewelove/nix-people.git /mnt/nix-config

cd /mnt/nix-config/home

nix --extra-experimental-features "nix-command flakes" run github:nix-community/disko -- --mode zap_create_mount ./disko.nix

git clone https://github.com/lewelove/nix-people.git /home/romma/nix-config

cd /home/romma/nix-config

ls
