-- Contains UI plugins in one file
return {
  -- Notifications (message boxes) for nvim, TODO: Configure to actually give notifications
  { "rcarriga/nvim-notify", opts = {}},
  -- Shows colors behind RGB and HEX values etc..
  { "NvChad/nvim-colorizer.lua", opts = {}},
  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function ()
      require("indent_blankline").setup {
        --char = "▏",
        --context_char = "▏",
        no_tab_character = true,
        show_current_context = true,
        show_end_of_line = true,
        --show_trailing_blankline_indent = true,
        use_treesitter = true,
      }
    end
  },
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
  -- Greeter/Dashboard screen
  {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    -- We modify theme (dashboard) to our liking aswell as making buttons adhere to my nvim config
    opts = function()
      local dashboard = require('alpha.themes.dashboard')
      local logo = [[
      +------+.      +------+       +------+       +------+      .+------+
      |`.    | `.    |\     |\      |      |      /|     /|    .' |    .'|
      |  `+--+---+   | +----+-+     +------+     +-+----+ |   +---+--+'  |
      |   |  |   |   | |    | |     |      |     | |    | |   |   |  |   |
      +---+--+.  |   +-+----+ |     +------+     | +----+-+   |  .+--+---+
      `.  |    `.|    \|     \|     |      |     |/     |/    |.'    | .'
        ` +------+     +------+     +------+     +------+     +------+'     
      ]]
      dashboard.section.header.val = vim.split(logo, '\n')
      return dashboard
    end,
    -- Initialize alpha with the theme of choice (dashboard)
    config = function()
      require('alpha').setup(require('alpha.themes.dashboard').config)
    end
  }
}
