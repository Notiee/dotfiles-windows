-- Remap <leader>
vim.g.mapleader = ' ' -- Space as leader
vim.g.maplocalleader = ' ' -- Space as local leader

-- Options
vim.opt.autowrite = false -- User has to specifically save each modification
vim.opt.autoread = true -- Always keep file up to date
-- vim.opt.cursorline = true -- Show cursorline for better visibility
vim.opt.number = true -- Show line number in gutter
vim.opt.numberwidth = 4 -- Minimum number of columns to fit line numbers into

-- Indentation
vim.opt.tabstop = 2 -- Set tab indent width
vim.opt.shiftwidth = 2 -- Set spaces indent width
vim.opt.expandtab = true -- Use spaces for <Tab> indentation
vim.opt.shiftround = true -- Round indentation for consistency
vim.opt.smarttab = true

-- Colors
vim.opt.termguicolors = true -- Enable 24-bit color required for some plugins

-- Whitespace characters
--vim.opt.list = true -- Show tabs and spaces
--vim.opt.listchars:append "space:•"
--vim.opt.listchars:append "eol:↴"

-- vim.cmd [[ set noswapfile ]]

