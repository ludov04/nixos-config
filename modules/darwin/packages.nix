{ pkgs, pkgs-unstable, ... }:

with pkgs;
let shared-packages = import ../shared/packages.nix { inherit pkgs; }; in
shared-packages ++ [
  dockutil
  devbox
  lazygit
  tailscale
  podman
] ++ (with pkgs-unstable; [
  claude-code
  _1password-cli
])
