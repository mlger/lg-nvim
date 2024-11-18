local lspconfig = require('lspconfig')

lspconfig.html.setup {
  cmd = { "html-languageserver", "--stdio" },
  on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  end,
  flags = {
    debounce_text_changes = 150,
  },
}

