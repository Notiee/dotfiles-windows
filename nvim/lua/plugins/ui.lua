-- Contains UI plugins in one file
return {
  -- Lualine, replace default status line with a customizable one written in Lua
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = 'auto',
        icons_enabled = false,
        component_separators = '|',
        section_separators = '',
      }
    },
  },
  -- Notifications (message boxes) for nvim, TODO: Configure to actually give notifications
  { "rcarriga/nvim-notify", opts = {}},
  -- Shows colors behind RGB and HEX values etc..
  { "NvChad/nvim-colorizer.lua", opts = {}},
  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function ()
      --vim.opt.list = true
      --local listchars = vim.opt.listchars
      --listchars:append("trail:•")
      --listchars:append("lead:•")
      --listchars:append("space:•")
      --vim.g.indent_blankline_char = ">"
      require("indent_blankline").setup {
        --char = "▏",
        --context_char = "▏",
        no_tab_character = true,
        show_current_context = true,
        show_end_of_line = true,
        show_trailing_blankline_indent = true,
        use_treesitter = true,
      }
    end
  },
}
