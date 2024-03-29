-- Switch between buffers
vim.keymap.set('n', '<C-PageUp>', ':bnext<CR>', {silent = true})
vim.keymap.set('n', '<C-PageDown>', ':bprevious<CR>', {silent = true})

-- Neovide GUI client
if vim.g.neovide == true then
    -- vim.cmd 'set guifont=Hack\ NF:h10'
    -- vim.o.guifont='Consolas:h10'
    -- vim.o.guifont='FiraCode NF:h14'
    -- vim.o.guifont='Operator Mono,FiraCode NF:h14'
    vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end
