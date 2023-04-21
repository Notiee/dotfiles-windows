-- File explorer
return {
  'nvim-tree/nvim-tree.lua',
  opts = {}, 
  config = function()
    local wk = require("which-key")
    wk.register({
        ['<leader>'] = {
            e = {
                name = 'File [e]xplorer',
                t = {'<cmd>NvimTreeToggle<cr>', '[T]oggle file explorer'},
                o = {'<cmd>NvimTreeOpen<cr>', '[O]pen file explorer'},
                c = {'<cmd>NvimTreeClose<cr>', '[C]lose file explorer'},
                f = {'<cmd>NvimTreeFocus<cr>', '[F]ocus file explorer'},
            }
        }
    }, {mode = 'n'})

    require("nvim-tree").setup()
  end
}
