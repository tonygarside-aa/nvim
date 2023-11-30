require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})

local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.gopls.setup({
  capabilities = capabilities
})

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      completion = {
        callSnippet = "nvim-cmp"
      }
    }
  },
  capabilities = capabilities
})
