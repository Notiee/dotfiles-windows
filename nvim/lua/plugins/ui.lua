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
      require("indent_blankline").setup {
        show_current_context = true,
        -- show_current_context_start = true,
        show_end_of_line = true,
        show_trailing_blankline_indent = false,
        space_char_blankline = " ",
        use_treesitter = true,
      }
    end
  },
}
