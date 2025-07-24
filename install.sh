#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME"/nixpkgs

ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf

ln -sf "$PWD/.starship.toml" "$XDG_CONFIG_HOME"/.starship.toml
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
ln -sf "$PWD/config.nix" "$XDG_CONFIG_HOME"/nixpkgs/config.nix

# install Nix packages from config.nix
nix-env -iA nixpkgs.myPackages

# Set npm global prefix to avoid permission issues
mkdir -p "$HOME"/.npm-global
npm config set prefix ~/.npm-global
echo 'export PATH=$PATH:~/.npm-global/bin' >>~/.bashrc

# install aicommit2 via npm
npm install -g aicommit2
