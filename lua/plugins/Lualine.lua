return {
  "nvim-lualine/lualine.nvim", -- status line
  config = function()
    require("lualine").setup({
      options = {
        theme = 'nordic'
      }
    })
  end
}
