return{
  'mfussenegger/nvim-dap',
  config = function()
    local dap = require('dap')
     vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
  end
}
