{
  packageOverrides =
    pkgs: with pkgs; {
      myPackages = pkgs.buildEnv {
        name = "caffbit-tools";
        paths = [
          bash-completion
          starship
          nodejs_22
          lazygit
          gh
          neovim
          fd
          ripgrep
          fzf
          tree-sitter
        ];
      };
    };
} 
