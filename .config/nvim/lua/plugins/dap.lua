-- DAP (Debug Adapter Protocol) TODO: Setup plugins
local Plugins = {
  -- Base client, allows for DAPs to connect to nvim
  {
    "mfussenegger/nvim-dap",
    config = function ()
      -- Keymaps
      require("which-key").register({
        ['<leader>'] = {
          d = {
            name = '[D]ebug',
            t = {'<cmd>DapToggleBreakpoint<cr>', '[t]oggle breakpoint'},
            x = {'<cmd>DapTerminate<cr>', 'Terminate debugger'},
            o = {'<cmd>DapStepOver<cr>', 'Stepover debugger'},
          }
        }
      })
    end
  },
  -- Inline evaluations
  {
    "theHamsta/nvim-dap-virtual-text",
    opts = {},
  },
  -- UI for nvim-dap
  {
    "rcarriga/nvim-dap-ui",
    config = function ()
      local dap, dapui = require("dap"), require("dapui")
      -- Open and close DapUI automatically
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
}


-- Final
return Plugins
