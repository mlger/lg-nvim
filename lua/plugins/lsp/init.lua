local lspconfig = require("lspconfig")

require('null-ls')

require("mason").setup()
require("plugins.lsp.lsp_common_config")

require('plugins.lsp.c_config')
require('plugins.lsp.rust_config')
require('plugins.lsp.asm_config')
require('plugins.lsp.cssls_config')
require('plugins.lsp.html_config')
require('plugins.lsp.pyright_config')
