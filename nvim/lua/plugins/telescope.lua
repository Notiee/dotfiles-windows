-- UI fuzzy finder
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    keys = {
        {'<leader>f', desc = 'Fuzzy [f]inder'},
        {'<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Search [f]iles'},
        {'<leader>fw', '<cmd>Telescope grep_string', desc = 'Search current [w]ord'},
        {'<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Search by [g]rep'},
        {'<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Search [h]elp'},
    },
    config = function()
        local telescope = require('telescope')
        -- Make border square instead of default 'rounded'
        telescope.setup({
            -- DIRTY, overwriting defaults, TODO: make theme for square borders
            defaults = {
                borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" }
            }
        })
        -- OLD BINDINGS
        --[[
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
        vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
        vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
        --]]
    end
}
