-- UI fuzzy finder
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    --[[
    keys = {
        {'<leader>f', desc = 'Fuzzy [f]inder'},
        {'<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Search [f]iles'},
        {'<leader>fw', '<cmd>Telescope grep_string', desc = 'Search current [w]ord'},
        {'<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Search by [g]rep'},
        {'<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Search [h]elp'},
    },
    --]]
    config = function()
        -- Make border square instead of default 'rounded'
        local telescope = require('telescope')
        telescope.setup({
            -- DIRTY, overwriting defaults, TODO: make theme for square borders
            defaults = {
                borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" }
            }
        })
        -- Keybindings
        require("which-key").register({
        ['<leader>'] = {
            f = {
                    name = 'Fuzzy [f]inder',
                    f = {'<cmd>Telescope find_files<cr>', 'Find [f]iles'},
                    w = {'<cmd>Telescope grep_string<cr>', 'Search [w]ord under cursor'},
                    g = {'<cmd>Telescope live_grep<cr>', 'Search [g]rep'},
                    h = {'<cmd>Telescope help_tags<cr>', 'Search [h]elp'},
                    r = {'<cmd>Telescope oldfiles<cr>', '[r]ecent files'},
                }
            }
        })
    end
}
