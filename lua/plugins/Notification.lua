return{
  'rcarriga/nvim-notify',
  config = function()
    require('notify').setup({
      top_down = false,
      timeout = 3000,
      level = 3,
      stages = 'slide',
      opacity = 0.8
    })
    vim.notify = require('notify')
    vim.keymap.set('n', '<space>n', ':Telescope notify<CR>', {})
  end
}
