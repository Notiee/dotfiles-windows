-- Contains UI plugins in one file
return {
  -- Notifications (message boxes) for nvim, TODO: Configure to actually give notifications
  { "rcarriga/nvim-notify", opts = {}},
  -- Shows colors behind RGB and HEX values etc..
  { "NvChad/nvim-colorizer.lua", opts = {}},
  -- Highlight TODO, FIX etc..
  { "folke/todo-comments.nvim", dependencies = "nvim-lua/plenary.nvim", opts = {} },
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
  -- Tabbar (bufferline)
  {
    'akinsho/bufferline.nvim', version = "*",
    opts = {
      options = {
        -- Use bufdelete.nvim instead of native function, needed with nvimtree
        close_command = "Bdelete! %d",
        right_mouse_command = "Bdelete! %d",
        left_mouse_command = "buffer %d",
        diagnostics = "nvim_lsp",
        always_show_bufferline = true,
        indicator = { style = "icon", icon = "▎" },
        offsets = {
          -- {filetype = "NvimTree", text = "File Explorer", text_align = "center", highligh = "Directory", separator = true},
          {filetype = "NvimTree"}
        }
      },
    }
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
        dashboard.section.buttons.val = {
          dashboard.button("e", " " .. " New file", ":ene <CR>"),
          dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
          dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
          dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
          dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
          -- dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
          dashboard.button("q", " " .. " Quit", ":qa<CR>"),
        }
      return dashboard
    end,
    -- Initialize alpha with the theme of choice (dashboard)
    config = function()
      require('alpha').setup(require('alpha.themes.dashboard').config)
    end
  }
}
