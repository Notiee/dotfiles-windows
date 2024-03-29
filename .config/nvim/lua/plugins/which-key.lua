-- WhichKey displays a popup with possible key bindings of the command you started typing
-- Put in bindings for plugins here!
return {
    "folke/which-key.nvim",
    lazy = true,
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup({
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            window = {
                --border = "single"
            }
        })
    end
}
