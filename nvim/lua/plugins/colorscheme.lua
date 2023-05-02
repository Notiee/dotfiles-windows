-- Import and set themes
return {
  -- Main theme
  { "rose-pine/neovim", name = "rose-pine" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "ellisonleao/gruvbox.nvim" },
  { "navarasu/onedark.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "projekt0n/github-nvim-theme", version = "v0.0.7" },
  { "shaunsingh/nord.nvim" },
  { "folke/tokyonight.nvim" },
  { "bluz71/vim-moonfly-colors" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        -- transparent_background = true,
      })
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
