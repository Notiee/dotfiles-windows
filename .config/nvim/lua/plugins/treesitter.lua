-- Highlight, edit, and navigate code
return {

  'nvim-treesitter/nvim-treesitter',

  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },

  build = ":TSUpdate",

  -- [ Configure Treesitter ]
  -- See `:help nvim-treesitter`
  config = function(_)
    require "nvim-treesitter.configs".setup {
      -- Languages to install

      ensure_installed = {
        'lua', 'c', 'cpp', 'c_sharp', 'rust', 'python', 'bash', 'markdown', 'markdown_inline',
        'vim', 'vimdoc', 'javascript', 'typescript', 'tsx', 'json', 'html', 'css',
        'java', 'glsl', 'hlsl', 'ini', 'php', 'sql', 'toml', 'yaml',
        'gdscript', 'zig', 'go', 'wgsl', 'wgsl_bevy',
      },
      -- ensure_installed = "all", -- install all language parsers
      ignore_install = {},      -- Exclude installing these parsers
      sync_install = false,     -- install synchronously (only applied to `ensure_installed`)

      -- Highlighting
      highlight = {
        enable = true,
        disable = {},           -- Languages to disable highlights for
      },

      -- Auto-pairs
      autopairs = {
        enable = true,
      },

      -- Indentation
      indent = {
        enable = true,
        disable = {},
      },
    }
  end
}
