return {
  {
    'nvimtools/none-ls.nvim',
    config = function()
      local null_ls = require 'null-ls'
      null_ls.setup {
        sources = {
          null_ls.builtins.formatting.prettier.with {
            filetypes = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'json' },
          },
        },
      }
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup {
        ensure_installed = { 'tsserver' },
        automatic_installation = true,
      }
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require 'lspconfig'
      lspconfig.tsserver.setup {}
    end,
  },
}
