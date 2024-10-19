local lspconfig = require("lspconfig")

require('null-ls')

require("mason").setup()

require('plugins.lsp.c_config')
require('plugins.lsp.rust_config')
