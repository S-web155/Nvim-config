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

    require("dap-python").setup("C:/Users/vinod/.virtualenvs/debugpy/Scripts/python")
    require("dapui").setup()

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
    vim.keymap.set('n', '<space>b', dap.toggle_breakpoint, {})
    vim.keymap.set('n', '<space>c', dap.continue, {})
  end,
}


