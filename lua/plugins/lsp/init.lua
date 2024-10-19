local lspconfig = require("lspconfig")

require('null-ls')

-- 启用 clangd 作为 C/C++ 的 LSP
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "clangd" }
}

-- 配置 clangd
lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  end,
  flags = {
    debounce_text_changes = 150,
  }
}

