-- DAP (Debug Adapter Protocol) TODO: Setup plugins
return {
  -- Base client, allows for DAPs to connect to nvim
  {
    "mfussenegger/nvim-dap"
  },
  -- Inline evaluations
  {
    "theHamsta/nvim-dap-virtual-text",
    opts = {},
  },
  -- UI for nvim-dap
  {
    "rcarriga/nvim-dap-ui",
    opts = {},
  },
}
