-- File explorer
return {
    'nvim-tree/nvim-tree.lua',
    opts = {}, 
    config = function()
        -- Keybindings
        require("which-key").register({
        ['<leader>'] = {
            e = {
                name = 'File [e]xplorer',
                t = {'<cmd>NvimTreeToggle<cr>', '[t]oggle file explorer'},
                o = {'<cmd>NvimTreeOpen<cr>', '[o]pen file explorer'},
                c = {'<cmd>NvimTreeClose<cr>', '[c]lose file explorer'},
                f = {'<cmd>NvimTreeFocus<cr>', '[f]ocus file explorer'},
            }
            }
        })
        require("nvim-tree").setup()
    end
}
