return {
  {
    "mason-org/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },

  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {'lua_ls', 'clangd', 'pyright', 'cmake'}
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      vim.lsp.config("lua_ls",{
        capabilities = capabilities
      })
      vim.lsp.config("clangd",{
        capabilities = capabilities
      })
      vim.lsp.config("pyright",{
        capabilities = capabilities
      })
      vim.lsp.config("cmake",{
        capabilities = capabilities
      })
      vim.lsp.config("qmlls",{
        cmd = {"qmlls6"},
        filetypes = { "qml", "qmljs" },
        capabilities = capabilities
      })
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("clangd")
      vim.lsp.enable("pyright")
      vim.lsp.enable("cmake")
      vim.lsp.enable("qmlls")
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {})
    end
  },
}
