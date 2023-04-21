-- File explorer
return {
  'nvim-tree/nvim-tree.lua',
  opts = {},
  --[[  
  config = function()
    local api = require('nvim-tree.Api')
    vim.keymap.set('n', '<leader>tt', api.tree.toggle, { desc = "[T]ree [T]oggle" })
    vim.keymap.set('n', '<leader>tf', api.tree.focus, { desc = "[T]ree [F]ocus" })
    vim.keymap.set('n', '<leader>to', api.tree.open, { desc = "[T]ree [O]pen" })
    vim.keymap.set('n', '<leader>tc', api.tree.close, { desc = "[T]ree [C]lose" })

    require("nvim-tree").setup()
  end
  --]]
}
