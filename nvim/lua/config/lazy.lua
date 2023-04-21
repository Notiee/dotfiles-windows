-- Bootstrapping lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print('Installing lazy.nvim....')
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
  print('lazy.nvim installed.')
end
vim.opt.rtp:prepend(lazypath)

-- Declare plugins to load, either directly in this table or from the plugins folder
local plugins = {
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

   -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Add nim language support
  'alaviss/nim.nvim',

  -- Icons for UI elements (git icons, file explorer icons, autocomplete type icons etc.)
  {'nvim-tree/nvim-web-devicons'},

  -- Import plugins from lua/plugins/*<plugin>.lua, to modularize plugins  
  { import = 'plugins' },

}

-- Options to configure lazy itself
local opts = {

}

-- Load and setup lazy
require("lazy").setup(plugins, opts)



