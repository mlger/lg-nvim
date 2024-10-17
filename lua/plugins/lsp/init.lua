local lspconfig = require("lspconfig")
local cmp = require("cmp")
local luasnip = require('luasnip')

-- 加载片段文件夹
require("luasnip.loaders.from_vscode").lazy_load()

-- 配置补全引擎
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- 代码片段引擎
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- 回车确认补全
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },  -- 使用 LSP 进行补全
    { name = 'luasnip' },   -- 使用代码片段补全
  }, {
    { name = 'buffer' },    -- 使用缓冲区中的文本进行补全
  })
})

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

    -- 设置补全快捷键
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap=true, silent=true })
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap=true, silent=true })
  end,
  flags = {
    debounce_text_changes = 150,
  }
}
