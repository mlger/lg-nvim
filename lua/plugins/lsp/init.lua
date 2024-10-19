local lspconfig = require("lspconfig")

require('null-ls')

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "clangd" }
}


require('plugins.lsp.c_config')
require('plugins.lsp.rust_config')
