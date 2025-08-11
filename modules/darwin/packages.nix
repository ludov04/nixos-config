{ pkgs, pkgs-unstable, ... }:

with pkgs;
let shared-packages = import ../shared/packages.nix { inherit pkgs; }; in
shared-packages ++ [
  dockutil
  devbox
  lazygit
] ++ (with pkgs-unstable; [
  claude-code
])
