return{
  'mfussenegger/nvim-dap',
  dependencies = {
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
    'mfussenegger/nvim-dap-python',
    },

  config = function()
    local dap = require('dap')
    local dapui = require("dapui")

    require("dap-python").setup("/home/sanchit/.local/share/nvim/mason/packages/debugpy/venv/bin/python3.exe")
    require('dapui').setup()
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    dap.adapters.codelldb = {
      type = "executable",
      command = "/home/sanchit/.local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb.exe",
      detached = false,
    }
    dap.configurations.cpp = {
      {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
      },
    }
    vim.keymap.set('n', '<space>b', dap.toggle_breakpoint, {})
    vim.keymap.set('n', '<space>c', dap.continue, {})
  end,
}


