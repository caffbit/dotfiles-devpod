{
  packageOverrides =
    pkgs: with pkgs; {
      myPackages = pkgs.buildEnv {
        name = "caffbit-tools";
        paths = [
          mods
          bash-completion
          neovim
          nodejs_22
          starship
          lazygit
          fd
          ripgrep
          fzf
        ];
      };
    };
} 