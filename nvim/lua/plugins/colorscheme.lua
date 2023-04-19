-- Import and set themes
return {
  -- Main theme
  { "rose-pine/neovim", name = "rose-pine" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "ellisonleao/gruvbox.nvim" },
  { "navarasu/onedark.nvim" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        transparent_background = true,
      })

     vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
