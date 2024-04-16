return {
  -- nvim-dap
  {
    'mfussenegger/nvim-dap',
    version = '*',
  },

  -- nvim-dap-ui
  {
    'rcarriga/nvim-dap-ui',
    version = '*',
    dependencies = {
      'mfussenegger/nvim-dap',
    },
    config = function()
      local dap, dapui = require 'dap', require 'dapui'
      require('dapui').setup()
      -- Automatically open dap-ui windows when debugging starts and close them when it ends
      dap.listeners.after.event_initialized['dapui_config'] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated['dapui_config'] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited['dapui_config'] = function()
        dapui.close()
      end
    end,
  },

  -- nvim-dap-go
  {
    'leoluz/nvim-dap-go',
    version = '*',
    dependencies = {
      'mfussenegger/nvim-dap',
    },
    config = function()
      require('dap-go').setup()

      -- optional: automatically configure dap-go on opening go files
      vim.api.nvim_create_autocmd('filetype', {
        pattern = 'go',
        callback = function()
          require('dap-go').setup()
        end,
      })

      -- additional setup for nvim-dap for go debugging
      local dap = require 'dap'

      dap.configurations.go = {
        {
          type = 'go',
          name = 'debug',
          request = 'launch',
          program = '${file}',
        },
        {
          type = 'go',
          name = 'debug test', -- debug tests in the current file
          request = 'launch',
          mode = 'test',
          program = './${relativefiledirname}',
        },
      }
    end,
  },
  {
    'theHamsta/nvim-dap-virtual-text',
    version = '*',
    dependencies = {
      'mfussenegger/nvim-dap',
    },
    config = function()
      require('nvim-dap-virtual-text').setup()
    end,
  },
  vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>lua require"dap".toggle_breakpoint()<CR>', { noremap = true, silent = true }),
}
