#!/usr/bin/env bash

nix --extra-experimental-features "nix-command flakes" run github:nix-community/disko -- --mode mount home/disko.nix

lsblk

echo "Hello ROMMMMMMMMMMMAaAAaAAAaaA"
