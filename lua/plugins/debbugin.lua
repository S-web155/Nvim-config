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

    require("dap-python").setup("C:\\Users\\vinod\\AppData\\Local\\nvim-data\\mason\\packages\\debugpy\\venv\\Scripts\\debugpy-adapter.exe")
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
      command = "C:\\Users\\vinod\\AppData\\Local\\nvim-data\\mason\\packages\\codelldb\\extension\\adapter\\codelldb.exe",
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
  end,
}


