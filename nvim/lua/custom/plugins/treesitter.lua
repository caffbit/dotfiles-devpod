return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  opts = {
    ensure_installed = {
      'lua',
      'javascript',
      'typescript',
      'tsx', -- React TSX files (includes JSX support)
      'html',
      'css',
      'scss', -- Sass/SCSS
      'json',
      'yaml',
      'markdown',
      'markdown_inline',
      'bash',
      'vim',
      'vimdoc',
      'regex',
      'gitignore',
      'dockerfile',
      'toml',
      'graphql', -- GraphQL queries
      'jsdoc', -- JSDoc comments
    },
  },
}
