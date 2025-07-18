#!/bin/bash

chmod +x "$PWD/lazygit/gen-commit-lazygit"

export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME"/nixpkgs

ln -sf "$PWD/lazygit" "$XDG_CONFIG_HOME"/lazygit
ln -sf "$PWD/mods" "$XDG_CONFIG_HOME"/mods
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
ln -sf "$PWD/.inputrc" "$HOME"/.inputrc
ln -sf "$PWD/config.nix" "$XDG_CONFIG_HOME"/nixpkgs/config.nix

mkdir -p "$HOME/bin"
ln -sf "$PWD/lazygit/gen-commit-lazygit" "$HOME"/bin/gen-commit-lazygit

export PATH="$HOME/bin:$PATH"

# install Nix packages from config.nix
nix-env -iA nixpkgs.myPackages
